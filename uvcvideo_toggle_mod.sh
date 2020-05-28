#!/usr/bin/env bash

if ! [ $(id -u) = 0 ]; then
  echo "The script needs to be run as root." >&2
  exit 1
fi

notify-send "Root access is required to enable/disable uvcvideo";

if [ -n "$(lsmod | grep -e uvcvideo)" ]; then
  modprobe -r uvcvideo && notify-send "Disabled: uvcvideo";
else
  modprobe uvcvideo && notify-send "Enabled: uvcvideo";
fi
