# Ikea Tradfri - Fun and/or useful scripts!
Hi, welcome to my Tradfri-scripts repo.

In this repo you'll find (eventually) several scripts to control your Ikea Tradfri bulbs from a linux computer and/or server.

For these scripts to work, you'll need Libcoap installed. You could either install it yourself, or run the script in the repo.
1. Download the installcoap.sh script from this repo.
2. Chmod the file to run it. `sudo chmod +x installcoap.sh`
3. Run the file as root. `sudo sh installcoap.sh`

All of these scripts need a username and pre-shared key to work. Keep in mind that this key will stop working if it hasn't 
been used for 6 weeks or more.

```
coap-client -m post -u "Client_identity" -k "$GATEWAYCODE" -e '{"9090":"$USERNAME"}' "coaps://$GATEWAYIP:5684/15011/9063"
```
1.Replace $GATEWAYCODE with the security-code at the bottom of your Ikea Tradfri Gateway.
2.Replace $USERNAME with a username of your liking. Remember it though, you'll need it!
3.Replace $GATEWAYIP with the IP-adress of your Ikea Tradfri Gateway.

Above command will return something like this:
```
{"9091":"$PRESHARED_KEY","9029":"1.3.0014"}
```
Where $PRESHARED_KEY is the key you'll need!

# Identifying lights

For this purpose, you could use the script [light.identifier.sh](https://github.com/matmuilwijk/Scripts/blob/master/light.identifier.sh).

Edit the script, providing you specific parameters.
1. Fill in your gateway's IP-adress at `ip=`
2. Fill in your username at `user=`
3. Fill in your Preshared-key at `psk=`

The script will now identify all the fixtures connected to your Tradfri-gateway. You can enter all of them one by one when the script asks you for input. When you hit return, the selected Bulb will turn on, and after 2 seconds turn off. When this cycle is completed, it will ask you for the name of this bulb. When a name is entered, it will be added to a file called bulblist.txt. All new bulbs will be added to this list, as long as you name them. This list is for your use only, and will not be used directly in other scripts.
