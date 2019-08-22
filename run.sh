#!/bin/bash

echo "Getting latest velocity.toml from $VELOCITY_TOML_URL"
curl -s $VELOCITY_TOML_URL > /velocity/velocity.toml

sed -i "s/A Velocity Server/${HOSTNAME} - $(date +%s | sha256sum | base64 | head -c 8)/" /velocity/velocity.toml

COMMAND="java -Xmx$JAVA_MEMORY -Xms$JAVA_MEMORY $JAVA_ARGS -jar velocity.jar"
echo "Running Velocity - $COMMAND"
cd /velocity 
eval $COMMAND
