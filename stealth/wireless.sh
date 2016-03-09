#!/bin/bash

# Create the firmware directory.
if [! -d /lib/firmware/ath10k/QCA6174/ ]; then
   mkdir -p /lib/firmware/ath10k/QCA6174/hw3.0/
fi

if [ ! -f /lib/firmware/ath10k/QCA6174/hw3.0/board.bin ]; then
   wget -O /lib/firmware/ath10k/QCA6174/hw3.0/board.bin https://github.com/stuartwells4/razer-laptop/blob/master/stealth/QCA6174/hw3.0/board-2.bin?raw=true
   chmod +x /lib/firmware/ath10k/QCA6174/hw3.0/board.bin
else
   echo "Firmware file /lib/firmware/ath10k/QCA6174/hw3.0/board.bin already exists"
fi

if [ -f /lib/firmware/ath10k/QCA6174/hw3.0/firmware-4.bin ]; then
   wget -O /lib/firmware/ath10k/QCA6174/hw3.0/firmware-4.bin https://github.com/stuartwells4/razer-laptop/blob/master/stealth/QCA6174/hw3.0/firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1?raw=true
   chmod +x /lib/firmware/ath10k/QCA6174/hw3.0/firmware-4.bin
else
   echo "Firmware file /lib/firmware/ath10k/QCA6174/hw3.0/firmware-4.bin already exists"
fi
