# rtl_433 to MQTT

Dockerfile to help containerize some specific functionality from https://github.com/merbanan/rtl_433.  Specifically broadcasting recieved devices to an MQTT broker for the given env variables.

+ MQTT_HOST _host for mqtt broker_
+ MQTT_PORT _mqtt port, defaults to 1883_
+ MQTT_USER _mqtt username_
+ MQTT_PASS _mqtt password_

Lastly since rtl_433 uses USB attached SDRs you'll need to pass through the device to docker (this requires the privileged flag).

If all goes well and your radio is in range of a 433mhz device broadcast, your MQTT broker should start receiving messages from those devices in the `rtl_433` topic.

I use this with docker compose. For example:

```yaml
  rtl433:
    build:
      context: https://github.com/rh0/rtl433_to_mqtt.git
    image: rh0/rtl433_to_mqtt:latest-dev
    container_name: rtl433
    restart: always
    env_file:
      - ./rtl433.env
    privileged: true
    devices:
      - /dev/bus/usb:/dev/bus/usb
```
