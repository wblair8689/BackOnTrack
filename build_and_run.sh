#!/bin/bash
set -e

# Paths
APP_NAME="HelloApp"
SRC_DIR="$APP_NAME"
BUILD_DIR="$SRC_DIR/.build"
APP_BUNDLE="$BUILD_DIR/$APP_NAME.app"
MACOS_DIR="$APP_BUNDLE/Contents/MacOS"
RESOURCES_DIR="$APP_BUNDLE/Contents/Resources"
PLIST_SRC="$SRC_DIR/Info.plist"
PLIST_DEST="$APP_BUNDLE/Contents/Info.plist"

# Clean previous build
rm -rf "$BUILD_DIR"
mkdir -p "$MACOS_DIR" "$RESOURCES_DIR"

# Compile Swift code
swiftc -o "$MACOS_DIR/$APP_NAME" "$SRC_DIR/main.swift" -framework Cocoa

# Copy Info.plist
cp "$PLIST_SRC" "$PLIST_DEST"

# Run the app
open "$APP_BUNDLE"
