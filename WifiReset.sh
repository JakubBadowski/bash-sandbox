#!/bin/bash

# This is short script to restart your WiFi driver. Common issue in HP Compaq laptops.

# Your driver name
DRIVER="iwl3945"

echo "WiFi driver reset - by Badyl"
echo

if sudo rmmod $DRIVER
	then
	echo "driver off"
fi

sleep 3

if sudo modprobe $DRIVER
	then
	echo "driver on"
fi

sleep 3
