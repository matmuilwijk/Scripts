#!/bin/bash


## Get the files needed.
git clone --depth 1 --recursive -b dtls https://github.com/home-assistant/libcoap.git

## Enter libcoap folder.
cd libcoap

## Start installation.
./autogen.sh
./configure --disable-documentation --disable-shared --without-debug CFLAGS="-D COAP_DEBUG_FD=stderr"
make
make install
