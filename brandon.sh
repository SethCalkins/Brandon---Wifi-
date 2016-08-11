#!/bin/bash
echo "power down wifi"
sleep .5
sudo ifconfig en0 down
sleep .5
echo "Lets set the channel for your wifi now"
sleep 1.5
sudo /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -c=36 en0 --ssid="xfinitywifi"
sleep .5
echo "All set..... Channel 36..."
sleep 1.5
sleep 1.0
echo "putting shit back together and turning wifi back on"
sleep .5
sudo ifconfig en0 up
echo "a few more commands..."
sleep .5
sudo /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -c=36 en0 --ssid="xfinitywifi"
sleep .5
echo "all done... does it work?"
exit
