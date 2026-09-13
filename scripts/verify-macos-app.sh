#!/bin/sh
set -eu

APP_PATH=${1:-"DeepSeek Harness.app"}

if [ ! -d "$APP_PATH" ]; then
  echo "Expected a macOS .app bundle: $APP_PATH" >&2
  exit 2
fi

codesign --verify --deep --strict --verbose=2 "$APP_PATH"
codesign -dv --verbose=4 "$APP_PATH" 2>&1 | grep -E 'Identifier=|Signature=|TeamIdentifier='
shasum -a 256 "$APP_PATH/Contents/MacOS/DeepSeek Harness"
