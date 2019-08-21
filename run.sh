#!/bin/bash

if [ -f /mnt/velocity.toml ]; then
	echo "Getting latest velocity.toml from $VELOCITY_TOML_URL"
	curl $VELOCITY_TOML_URL > /velocity/velocity.toml
fi

COMMAND="java -Xmx$JAVA_MEMORY -Xms$JAVA_MEMORY $JAVA_ARGS -jar velocity.jar"
echo "Running Velocity - $COMMAND"
cd /velocity 
eval $COMMAND
