#!/bin/sh

## Author:	Mattthijs Muilwijk
## Version:	1.2
## Date:	20181231

## Status, as forwarded by Tautulli. This has to be set in the Notification panel. play/pause/stop supported.
status="$1"
## API-user, as used for the creation of the Pre-Shared Key. (Instructions below)
user=			##Enter te API-user you've created.
## Pre-Shared Key, as provided by coap-client. Instructions can be found at https://github.com/glenndehaan/ikea-tradfri-coap-docs
psk=			##Enter pre-shared-key
## Set the IP adress used by your hub.
ip=			##Enter IP-adress of your Tradfri-Gateway.

## Some variables to be set for this script. Values here are the same as described at https://github.com/glenndehaan/ikea-tradfri-coap-docs
### Play
intensityplay=165
colorplay="\"efd275\""
### Pause
intensitypause=160
colorpause=\"f1e0b5\"
### Stop
intensitystop=200
colorstop="\"f1e0b5\""

## Set the ID's for the lightbulbs you want to control. Instructions can be found at https://github.com/glenndehaan/ikea-tradfri-coap-docs
bulb01=
bulb02=
bulb03=
bulb04=
bulb05=
bulb06=
bulb07=
bulb08=
bulb09=
bulb10=

if  [ -z "$bulb01" ]
then
	echo "No bulb found here!"
else
	if [ "$status" = "play" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensityplay, \"5706\": $colorplay }] }\' \"coaps://192.168.2.1:5684/15001/$bulb01\"
		echo "Lights set to their Play-scene!"
	elif [ "$status" = "stop" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitystop, \"5706\": $colorstop }] }\' \"coaps://192.168.2.1:5684/15001/$bulb01\"
		echo "Lights set to their Stop-scene!"
	elif [ "$status" = "pause" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitypause, \"5706\": $colorpause }] }\' \"coaps://192.168.2.1:5684/15001/$bulb01\"
		echo "Lights set to their Pause-scene!"
	else
		echo "$status is not supported by this script. Please stick with Play/Pause/Stop!"
	fi
fi

if  [ -z "$bulb02" ]
then
	echo "No bulb found here!"
else
	if [ "$status" = "play" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensityplay, \"5706\": $colorplay }] }\' \"coaps://192.168.2.1:5684/15001/$bulb02\"
		echo "Lights set to their Play-scene!"
	elif [ "$status" = "stop" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitystop, \"5706\": $colorstop }] }\' \"coaps://192.168.2.1:5684/15001/$bulb02\"
		echo "Lights set to their Stop-scene!"
	elif [ "$status" = "pause" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitypause, \"5706\": $colorpause }] }\' \"coaps://192.168.2.1:5684/15001/$bulb02\"
		echo "Lights set to their Pause-scene!"
	else
		echo "$status is not supported by this script. Please stick with Play/Pause/Stop!"
	fi
fi

if  [ -z "$bulb03" ]
then
	echo "No bulb found here!"
else
	if [ "$status" = "play" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensityplay, \"5706\": $colorplay }] }\' \"coaps://192.168.2.1:5684/15001/$bulb03\"
		echo "Lights set to their Play-scene!"
	elif [ "$status" = "stop" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitystop, \"5706\": $colorstop }] }\' \"coaps://192.168.2.1:5684/15001/$bulb03\"
		echo "Lights set to their Stop-scene!"
	elif [ "$status" = "pause" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitypause, \"5706\": $colorpause }] }\' \"coaps://192.168.2.1:5684/15001/$bulb03\"
		echo "Lights set to their Pause-scene!"
	else
		echo "$status is not supported by this script. Please stick with Play/Pause/Stop!"
	fi
fi

if  [ -z "$bulb04" ]
then
	echo "No bulb found here!"
else
	if [ "$status" = "play" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensityplay, \"5706\": $colorplay }] }\' \"coaps://192.168.2.1:5684/15001/$bulb04\"
		echo "Lights set to their Play-scene!"
	elif [ "$status" = "stop" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitystop, \"5706\": $colorstop }] }\' \"coaps://192.168.2.1:5684/15001/$bulb04\"
		echo "Lights set to their Stop-scene!"
	elif [ "$status" = "pause" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitypause, \"5706\": $colorpause }] }\' \"coaps://192.168.2.1:5684/15001/$bulb04\"
		echo "Lights set to their Pause-scene!"
	else
		echo "$status is not supported by this script. Please stick with Play/Pause/Stop!"
	fi
fi

if  [ -z "$bulb05" ]
then
	echo "No bulb found here!"
else
	if [ "$status" = "play" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensityplay, \"5706\": $colorplay }] }\' \"coaps://192.168.2.1:5684/15001/$bulb05\"
		echo "Lights set to their Play-scene!"
	elif [ "$status" = "stop" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitystop, \"5706\": $colorstop }] }\' \"coaps://192.168.2.1:5684/15001/$bulb05\"
		echo "Lights set to their Stop-scene!"
	elif [ "$status" = "pause" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitypause, \"5706\": $colorpause }] }\' \"coaps://192.168.2.1:5684/15001/$bulb05\"
		echo "Lights set to their Pause-scene!"
	else
		echo "$status is not supported by this script. Please stick with Play/Pause/Stop!"
	fi
fi

if  [ -z "$bulb06" ]
then
	echo "No bulb found here!"
else
	if [ "$status" = "play" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensityplay, \"5706\": $colorplay }] }\' \"coaps://192.168.2.1:5684/15001/$bulb06\"
		echo "Lights set to their Play-scene!"
	elif [ "$status" = "stop" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitystop, \"5706\": $colorstop }] }\' \"coaps://192.168.2.1:5684/15001/$bulb06\"
		echo "Lights set to their Stop-scene!"
	elif [ "$status" = "pause" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitypause, \"5706\": $colorpause }] }\' \"coaps://192.168.2.1:5684/15001/$bulb06\"
		echo "Lights set to their Pause-scene!"
	else
		echo "$status is not supported by this script. Please stick with Play/Pause/Stop!"
	fi
fi

if  [ -z "$bulb07" ]
then
	echo "No bulb found here!"
else
	if [ "$status" = "play" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensityplay, \"5706\": $colorplay }] }\' \"coaps://192.168.2.1:5684/15001/$bulb07\"
		echo "Lights set to their Play-scene!"
	elif [ "$status" = "stop" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitystop, \"5706\": $colorstop }] }\' \"coaps://192.168.2.1:5684/15001/$bulb07\"
		echo "Lights set to their Stop-scene!"
	elif [ "$status" = "pause" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitypause, \"5706\": $colorpause }] }\' \"coaps://192.168.2.1:5684/15001/$bulb07\"
		echo "Lights set to their Pause-scene!"
	else
		echo "$status is not supported by this script. Please stick with Play/Pause/Stop!"
	fi
fi

if  [ -z "$bulb08" ]
then
	echo "No bulb found here!"
else
	if [ "$status" = "play" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensityplay, \"5706\": $colorplay }] }\' \"coaps://192.168.2.1:5684/15001/$bulb08\"
		echo "Lights set to their Play-scene!"
	elif [ "$status" = "stop" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitystop, \"5706\": $colorstop }] }\' \"coaps://192.168.2.1:5684/15001/$bulb08\"
		echo "Lights set to their Stop-scene!"
	elif [ "$status" = "pause" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitypause, \"5706\": $colorpause }] }\' \"coaps://192.168.2.1:5684/15001/$bulb08\"
		echo "Lights set to their Pause-scene!"
	else
		echo "$status is not supported by this script. Please stick with Play/Pause/Stop!"
	fi
fi

if  [ -z "$bulb09" ]
then
	echo "No bulb found here!"
else
	if [ "$status" = "play" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensityplay, \"5706\": $colorplay }] }\' \"coaps://192.168.2.1:5684/15001/$bulb09\"
		echo "Lights set to their Play-scene!"
	elif [ "$status" = "stop" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitystop, \"5706\": $colorstop }] }\' \"coaps://192.168.2.1:5684/15001/$bulb09\"
		echo "Lights set to their Stop-scene!"
	elif [ "$status" = "pause" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitypause, \"5706\": $colorpause }] }\' \"coaps://192.168.2.1:5684/15001/$bulb09\"
		echo "Lights set to their Pause-scene!"
	else
		echo "$status is not supported by this script. Please stick with Play/Pause/Stop!"
	fi
fi

if  [ -z "$bulb10" ]
then
	echo "No bulb found here!"
else
	if [ "$status" = "play" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensityplay, \"5706\": $colorplay }] }\' \"coaps://192.168.2.1:5684/15001/$bulb10\"
		echo "Lights set to their Play-scene!"
	elif [ "$status" = "stop" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitystop, \"5706\": $colorstop }] }\' \"coaps://192.168.2.1:5684/15001/$bulb10\"
		echo "Lights set to their Stop-scene!"
	elif [ "$status" = "pause" ]
	then
		eval coap-client -m put -u \"$user\" -k \"$psk\" -e \'{ \"3311\": [{ \"5850\": 1, \"5712\": 25, \"5851\": $intensitypause, \"5706\": $colorpause }] }\' \"coaps://192.168.2.1:5684/15001/$bulb10\"
		echo "Lights set to their Pause-scene!"
	else
		echo "$status is not supported by this script. Please stick with Play/Pause/Stop!"
	fi
fi
