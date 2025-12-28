#!/usr/bin/env bash
SERVICE="iio-sensor-proxy.service"

if systemctl is-active --quiet "$SERVICE"; then
  systemctl --user stop "$SERVICE" 2>/dev/null || sudo systemctl stop "$SERVICE"
  notify-send "Rotation Lock" "ON (auto-rotation disabled)"
else
  systemctl --user start "$SERVICE" 2>/dev/null || sudo systemctl start "$SERVICE"
  notify-send "Rotation Lock" "OFF (auto-rotation enabled)"
fi
