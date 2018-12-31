#!/bin/bash

ip=				## Enter the ID of your Tradfri-gateway.
user=				## Enter the username you've created.
psk=				## Enter the Preshared-Key you've created.

echo " "
echo "Below you'll find a list of different lightbulbs by number. The number consists of 5 digits, identifying"
echo "every single bulb and remote."
echo " "

eval coap-client -m get -u \"$user\" -k \"$psk\" \"coaps://$ip:5684/15001\"

echo "Please enter one of the numbers above to ID it's light counterpart.:"
read bulbid

if [ -z $bulbid ]
then
	echo "Please start this script again, and enter a number from the list above."
else
	echo "Bulb $bulbid will now turn on for 2 seconds. It will turn of after 2 seconds if it's already on."
	eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1 }] }\' \"coaps://192.168.2.1:5684/15001/$bulbid\"
	sleep 2
	eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 0 }] }\' \"coaps://192.168.2.1:5684/15001/$bulbid\"
	echo "What is this bulb called?"
	read bulbname
fi

if [ -z $bulbname ]
then
	echo "No name was entered, so it won't be saved to your bulb-list."
else
	echo "$bulbid - $bulbname" >> bulblist.txt
	echo "This bulb has been saved to bulblist.txt"
fi
