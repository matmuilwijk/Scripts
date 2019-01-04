# Ikea Tradfri - Fun and/or useful scripts!
Hi, welcome to my Tradfri-scripts repo.

In this repo you'll find (eventually) several scripts to control your Ikea Tradfri bulbs from a linux computer and/or server.

For these scripts to work, you'll need Libcoap installed. You could either install it yourself, or run the script in the repo.
1. Download the installcoap.sh script from this repo.
2. Chmod the file to run it. `sudo chmod +x installcoap.sh`
3. Run the file as root. `sudo sh installcoap.sh`

# Getting a username and Preshared Key for our scripts.
All of these scripts need a username and pre-shared key to work. Keep in mind that this key will stop working if it hasn't 
been used for 6 weeks or more.

For this task, you'll need [get.psk.sh](https://github.com/matmuilwijk/Scripts/blob/master/get.psk.sh)-script, the IP-adress of your gateway and it's securitykey (printed on the bottom of you gateway).

1. Run the script in your terminal `sh get.psk.sh`
2. Enter the IP-adress of your gateway, when prompted.
3. Create a username, when prompted.
4. Enter, when prompted, the securitykey that's printed on the bottom of your gateway.
5. Let the script run.
6. When the script is finished, you'll find your Preshared Key in `psk.txt`. You can open this in your desired text-editor.

# Identifying lights

To identify what light is bound to what adress, you could use the script [light.identifier.sh](https://github.com/matmuilwijk/Scripts/blob/master/light.identifier.sh).

Edit the script, providing your specific parameters. (If you followed this guide, this information will be stored in a file called `psk.txt`.
1. Fill in your gateway's IP-adress at `ip=`
2. Fill in your username at `user=`
3. Fill in your Preshared-key at `psk=`

The script will now identify all the fixtures connected to your Tradfri-gateway. You can enter all of them one by one when the script asks you for input. When you hit return, the selected Bulb will turn on, and after 2 seconds turn off. When this cycle is completed, it will ask you for the name of this bulb. When a name is entered, it will be added to a file called bulblist.txt. All new bulbs will be added to this list, as long as you name them. This list is for your use only, and will not be used directly in other scripts.
