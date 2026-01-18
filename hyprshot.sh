#!/usr/bin/env bash
set -euo pipefail
#
# Screenshot script for Hyprland/Wayland.
#  
# Author : FlareXes
# GitHub : https://github.com/FlareXes/hyprshot
# 
# Notes:
#   - Press Esc to cancel selection.
#   - Output directory is fixed at: ~/Pictures/Screenshots
# 

SCREENSHOT_DIR="$HOME/Pictures/Screenshots"
DATE_FMT="%Y-%m-%d_%H-%M-%S"
FILE_PREFIX="screenshot"
OUTFILE="$SCREENSHOT_DIR/${FILE_PREFIX}-$(date +"$DATE_FMT").png"

# Checking and installing dependencies
dependencies=("slurp" "grim" "satty" "wl-copy")
for dep in "${dependencies[@]}"; do
    command -v "$dep" &> /dev/null || { echo "$dep not found, please install it."; exit 1; }
done

# Ensure screenshot directory exists
mkdir -p "$SCREENSHOT_DIR"

# Capture screenshot
screenshot="$(slurp || true)"

# Cancel if user esc
[ -z "$screenshot" ] && exit 0

# Take screenshot -> open in satty -> save file + copy to clipboard
grim -g "$screenshot" - | satty --filename - \
    --output-filename "$OUTFILE" \
    --early-exit \
    --actions-on-enter save-to-clipboard \
    --copy-command 'wl-copy'
