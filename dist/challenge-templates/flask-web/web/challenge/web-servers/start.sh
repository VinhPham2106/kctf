#!/bin/bash

# Start node web server
(python3 -m flask run --host=0.0.0.0 --port=1337)&

# Proxy stdin/stdout to web server
socat - TCP:127.0.0.1:1337,forever
