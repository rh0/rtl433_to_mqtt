# rtl_433 to MQTT

Dockerfile to help containerize some specific functionality from https://github.com/merbanan/rtl_433.  Specifically broadcasting recieved devices to an MQTT broker for the given env variables.

+ MQTT_HOST _host for mqtt borker_
+ MQTT_PORT _mqtt port, defaults to 1883_

This is targeted for a specific need I have, and could be generalized to be more broadly useful. @TODO I suppose.
