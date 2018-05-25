#include "wifi.h"
#include "config.h"
#include "locoHandling.h"
#include "lowbat.h"
#include "stateMachine.h"

#define DEBUG

state wiFredState = STATE_STARTUP;
uint32_t stateTimeout = UINT32_MAX;

void setup() {
// put your setup code here, to run once:

  initConfig();
  locoInit();
  initClock();
  lowBatteryInit();
  
  Serial.begin(115200);
  #ifdef DEBUG
  Serial.setDebugOutput(true);
  #endif
  delay(100);

  initWiFi();
}

void loop() {
  // put your main code here, to run repeatedly:
  handleWiFi();
  clockHandler();
  lowBatteryHandler();
  locoHandler();

  static uint32_t test = 0;

#ifdef DEBUG
  if(test < millis())
  {
    test = millis() + 5000;
    Serial.println(ESP.getFreeHeap());
  }
#endif

  switch(wiFredState)
  {
    case STATE_STARTUP:
      if(!clockActive || getInputState(0) == true || getInputState(1) == true || getInputState(2) == true || getInputState(3) == true)
      {
        initWiFiSTA();
        switchState(STATE_CONNECTING, 60 * 1000);
      }
      else
      {
        initWiFiAP();
        switchState(STATE_CONFIG_AP);
      }
      break;
      
    case STATE_CONNECTING:
      if(WiFi.status() == WL_CONNECTED)
      {
        switchState(STATE_CONNECTED);
      }
      else if(millis() > stateTimeout)
      {
        initWiFiAP();
        switchState(STATE_CONFIG_AP);
      }
      break;

    case STATE_CONNECTED:
      if(getInputState(0) == false && getInputState(1) == false && getInputState(2) == false && getInputState(3) == false)
      {
        if(clockActive)
        {
          initWiFiConfigSTA();
          switchState(STATE_CONFIG_STATION_WAITING, 30 * 1000);
        }
        else
        {
          switchState(STATE_LOWPOWER_WAITING, 30 * 1000);
        }
        break;
      }

      if(WiFi.status() != WL_CONNECTED)
      {
        initWiFiSTA();
        switchState(STATE_CONNECTING, 30 * 1000);
      }
      break;

    case STATE_CONFIG_STATION_WAITING:
      if(millis() > stateTimeout)
      {
        shutdownWiFiSTA();
        switchState(STATE_LOWPOWER);
        break;
      }
    // break;
    // intentional fall-through
    case STATE_CONFIG_STATION:
      if(getInputState(0) == true || getInputState(1) == true || getInputState(2) == true || getInputState(3) == true)
      {
        shutdownWiFiConfigSTA();
        switchState(STATE_CONNECTED);
      }
      break;

    case STATE_LOWPOWER_WAITING:
      if(millis() > stateTimeout)
      {
        shutdownWiFiSTA();
        switchState(STATE_LOWPOWER);
      }
    // break;
    // intentional fall-through
    case STATE_LOWPOWER:
      if(getInputState(0) == true || getInputState(1) == true || getInputState(2) == true || getInputState(3) == true)
      {
         switchState(STATE_STARTUP);
      }
      break;
      
    case STATE_CONFIG_AP:
    // no way to get out of here except for restart
      break;
  }
}

void switchState(state newState, uint32_t timeout)
{
  wiFredState = newState;
  if(timeout == UINT32_MAX)
  {
    stateTimeout = timeout;
  }
  else
  {
    stateTimeout = millis() + timeout;
  }
}

