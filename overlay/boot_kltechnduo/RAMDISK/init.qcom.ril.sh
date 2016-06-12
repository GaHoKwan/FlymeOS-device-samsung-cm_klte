#!/system/bin/sh
export PATH=/system/xbin:$PATH

device=`getprop ro.bootloader|cut -c 1-6`

if [ "$device" = "G9009W" ]; then
    stop ril-daemon2
    start ril-daemon2-09w
fi


