#!/usr/bin/with-contenv bashio

# Define paths
CONFIG_PATH="/data"
MUSIC_PATH=$(bashio::config 'music_path')

# Inform user
bashio::log.info "Starting Swing Music..."
bashio::log.info "Music path set to: $MUSIC_PATH"

# Ensure the config directory exists
mkdir -p "$CONFIG_PATH"

# Run the app
# The app will allow you to add music folders from the UI.
# Mapping /media to the app's view makes it easy to find.
exec python3 -m swingmusic \
    --host 0.0.0.0 \
    --config "$CONFIG_PATH" \
    --port 1970
