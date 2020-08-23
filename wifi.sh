#!/bin/bash
# For Raspbian on Raspberry Pi.
clear
echo
echo '            ###################'
echo '            ###################'
echo '            ##  wifi script  ##'
echo '            ##   by Alyssa   ##'
echo '            ###################'
echo '            ###################'
echo
echo '1) Scan for networks.'
echo '2) Enter network name (SSID).'
echo '3) Enter network password (PSK).'
echo '4) Append new network to network list.'
echo '5) Manually edit network list.'
echo 'Enter any other value to exit'
echo '_____________________________________________'
echo 'Network name:'
echo
echo 'Network password:'
echo
echo '_____________________________________________'
while true; do
read a
case $a in
1) echo 'Scanning...'; sudo iwlist wlan0 scan | grep 'ESSID';;
2) clear; echo; echo '            ###################'; echo '            ###################'; echo '            ##  wifi script  ##'; echo '            ##   by Alyssa   ##'; echo '            ###################'; echo '            ###################'; echo; echo '1) Scan for networks.'; echo '2) Enter network name (SSID).'; echo '3) Enter network password (PSK).'; echo '4) Append new network to network list.'; echo '5) Manually edit network list.'; echo 'Enter any other value to exit'; echo '_____________________________________________'; echo 'Network name:'; echo $SSID; echo 'Network password:'; echo $PSK; echo '_____________________________________________'; echo 'Enter SSID.'; read SSID;  echo 'Network name:'; echo $SSID; clear; echo; echo '            ###################'; echo '            ###################'; echo '            ##  wifi script  ##'; echo '            ##   by Alyssa   ##'; echo '            ###################'; echo '            ###################'; echo; echo '1) Scan for networks.'; echo '2) Enter network name (SSID).'; echo '3) Enter network password (PSK).'; echo '4) Append new network to network list.'; echo '5) Manually edit network list.'; echo 'Enter any other value to exit'; echo '_____________________________________________'; echo 'Network name:'; echo $SSID; echo 'Network password:'; echo $PSK; echo '_____________________________________________';;
3) clear; echo; echo '            ###################'; echo '            ###################'; echo '            ##  wifi script  ##'; echo '            ##   by Alyssa   ##'; echo '            ###################'; echo '            ###################'; echo; echo '1) Scan for networks.'; echo '2) Enter network name (SSID).'; echo '3) Enter network password (PSK).'; echo '4) Append new network to network list.'; echo '5) Manually edit network list.'; echo 'Enter any other value to exit'; echo '_____________________________________________'; echo 'Network name:'; echo $SSID; echo 'Network password:'; echo $PSK; echo '_____________________________________________'; echo 'Enter SSID.'; read PSK;  echo 'Network name:'; echo $SSID; clear; echo; echo '            ###################'; echo '            ###################'; echo '            ##  wifi script  ##'; echo '            ##   by Alyssa   ##'; echo '            ###################'; echo '            ###################'; echo; echo '1) Scan for networks.'; echo '2) Enter network name (SSID).'; echo '3) Enter network password (PSK).'; echo '4) Append new network to network list.'; echo '5) Manually edit network list.'; echo 'Enter any other value to exit'; echo '_____________________________________________'; echo 'Network name:'; echo $SSID; echo 'Network password:'; echo $PSK; echo '_____________________________________________';;
4) sudo echo '' >> /etc/wpa_supplicant/wpa_supplicant.conf; sudo echo 'network={' >> /etc/wpa_supplicant/wpa_supplicant.conf; sudo echo '	ssid=''"'$SSID'"' >> /etc/wpa_supplicant/wpa_supplicant.conf; sudo echo '	psk=''"'$PSK'"' >> /etc/wpa_supplicant/wpa_supplicant.conf; sudo echo '	key_mgmt=WPA-PSK' >> /etc/wpa_supplicant/wpa_supplicant.conf; sudo echo '}' >> /etc/wpa_supplicant/wpa_supplicant.conf; sudo echo '' >> /etc/wpa_supplicant/wpa_supplicant.conf; echo 'Done';;
5) sudo nano /etc/wpa_supplicant/wpa_supplicant.conf; break;;
*) break;;
esac
done