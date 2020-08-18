#!/bin/bash
echo "Starting rtl_433 to MQTT!"
echo "Running command: rtl_433 -v -M time:unix:usec:utc -C customary -F \"mqtt://${MQTT_HOST}:${MQTT_PORT}user=${MQTT_USER},pass=${MQTT_PASS},events=rtl_433/events[/model],devices=rtl_433/devices\""

rtl_433 -v -M time:unix:usec:utc -C customary -F "mqtt://${MQTT_HOST}:${MQTT_PORT},user=${MQTT_USER},pass=${MQTT_PASS},events=rtl_433/events[/model],devices=rtl_433/devices"
