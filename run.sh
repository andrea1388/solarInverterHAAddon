#!/usr/bin/with-contenv bashio
CONFIG_PATH=/data/options.json

serialdev="$(bashio::config 'serialdev')"

echo "Starting inv2mqtt ${serialdev}"

python3 -u inv2mqtt.py ${serialdev}