#!/bin/bash

# Plugin name (Id in metadata.json)
PLUGIN_ID="com.jimmycamus.clock"

echo "--- Starting reinstallation process ---"

# 1. Try to uninstall using the official tool
echo "[-] Uninstalling previous plasmoid..."
kpackagetool6 -t Plasma/Applet -r $PLUGIN_ID

# 2. Forced cleanup of remnants in the local folder
echo "[-] Cleaning residual files..."
rm -rf ~/.local/share/plasma/plasmoids/$PLUGIN_ID


# 3. Restart Plasma Shell to refresh cache and metadata
echo "[!] Restarting plasmashell (the screen may flicker)..."
killall plasmashell && kstart plasmashell > /dev/null 2>&1 &

# 4. Clean installation from the current folder
echo "[+] Installing new version..."
kpackagetool6 -t Plasma/Applet -i .


echo "--- Process completed successfully ---"