#!/bin/bash

OUTPUT_FILE="terminal-output.txt"
SCREENSHOT_DIR="screenshots"

mkdir -p "$SCREENSHOT_DIR"
> "$OUTPUT_FILE"

echo "Enter commands one by one."
echo "Type DONE when finished."
echo ""

while true
do
    read -p "Command: " COMMAND

    if [ "$COMMAND" = "DONE" ]; then
        break
    fi

    echo ""
    echo "========================================" | tee -a "$OUTPUT_FILE"
    echo "COMMAND: $COMMAND" | tee -a "$OUTPUT_FILE"
    echo "========================================" | tee -a "$OUTPUT_FILE"

    eval "$COMMAND" 2>&1 | tee -a "$OUTPUT_FILE"

    echo ""
    read -p "Press ENTER to take screenshot..."

    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
    gnome-screenshot -f "$SCREENSHOT_DIR/screenshot_$TIMESTAMP.png"

    echo "Screenshot saved."
    echo ""
done

echo "All commands completed."
echo "Output saved in: $OUTPUT_FILE"
echo "Screenshots saved in: $SCREENSHOT_DIR/"
