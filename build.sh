#!/bin/bash

mkdir -p /velocity
cd /velocity

echo "Fetching Velocity"
wget -O velocity.jar $VELOCITY_JAR_URL
