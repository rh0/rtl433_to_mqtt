#!/bin/bash
echo "Starting rtl_433 to MQTT!"
echo "Data will be published to rtl_433 topic."
echo "mqtt://${MQTT_HOST}:${MQTT_PORT},user=${MQTT_USER},pass=${MQTT_PASS},events=rtl_433/sensors[/model]"

rtl_433 -v -M time:unix:usec:utc -C customary -F "mqtt://${MQTT_HOST}:${MQTT_PORT},user=${MQTT_USER},pass=${MQTT_PASS},events=rtl_433/sensors[/model]"
