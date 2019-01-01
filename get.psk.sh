#!/bin/sh

## This script is a test-case to get the Preshared Key, and wrapping it in a text file.

echo "Please enter the IP-adress of your Ikea Tradfri Gateway:"
read ip

echo "IP-adress:" $ip >> psk.txt

echo "Please choose a username:"
read user

echo "Username:" $user >> psk.txt

echo "Please enter the Security-Code that's printed at the bottom of you Ikea Tradfri Gateway:"
read securityid

echo "Preshared Key ({\"9091\":\"PRESHAREDKEY\",\"9029\":\"1.4.0015\"}):" >> psk.txt

eval coap-client -m post -u \"Client_identity\" -k \"$securityid\" -e '{\"9090\":\"$user\"}' \"coaps://$ip:5684/15011/9063\" >> psk.txt

echo "Your IP-adress, username and Preshared key are saved in psk.txt!"
