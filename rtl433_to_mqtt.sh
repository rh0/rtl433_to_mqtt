#!/bin/bash
echo "Starting rtl_433 to MQTT!"
echo "Running command: rtl_433 -v -M time:unix:usec:utc -C customary -F \"mqtt://${MQTT_HOST}:${MQTT_PORT},events=rtl_433/sensor[/model]\""

rtl_433 -v -M time:unix:usec:utc -C customary -F "mqtt://${MQTT_HOST}:${MQTT_PORT},events=rtl_433/sensor[/model]"
