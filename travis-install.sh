#!/bin/bash

if [ "$TRAVIS_OS_NAME" == "linux" ]; then
	pwd
	mosquitto -h
	mosquitto -d -c test/tls-testing/mosquitto.conf
fi

if [ "$TRAVIS_OS_NAME" == "osx" ]; then
	pwd
	brew update
	brew install openssl mosquitto
	brew services start mosquitto -c test/tls-testing/mosquitto.conf
fi
