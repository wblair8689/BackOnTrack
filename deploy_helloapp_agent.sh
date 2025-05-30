#!/bin/bash
set -e

PLIST_SRC="/Users/williamblair/Desktop/BackOnTrack/com.example.helloapp.plist"
PLIST_DEST="$HOME/Library/LaunchAgents/com.example.helloapp.plist"

# Ensure LaunchAgents directory exists
mkdir -p "$HOME/Library/LaunchAgents"

# Copy the plist
cp "$PLIST_SRC" "$PLIST_DEST"

# Unload previous agent if loaded
launchctl unload "$PLIST_DEST" 2>/dev/null || true

# Load the new agent
launchctl load "$PLIST_DEST"

echo "Launch Agent loaded. Check /tmp/helloapp.log for output."
