#!/bin/bash
ls -l /dev/input/by-id
#total 0
#lrwxrwxrwx 1 root root 9 Nov 16 17:23 usb-413c_Dell_KB216_Wired_Keyboard-event-if01 -> ../event3
#lrwxrwxrwx 1 root root 9 Nov 16 17:23 usb-413c_Dell_KB216_Wired_Keyboard-event-kbd -> ../event2
#lrwxrwxrwx 1 root root 9 Nov 16 17:23 usb-Microsoft_Comfort_Mouse_6000-event-if00 -> ../event0
#rwxrwxrwx 1 root root 9 Nov 16 17:23 usb-Microsoft_Comfort_Mouse_6000-event-mouse -> ../event1
#lrwxrwxrwx 1 root root 9 Nov 16 17:23 usb-Microsoft_Comfort_Mouse_6000-mouse -> ../mouse0
ls -l /dev/input/by-id | tr '[:upper:]' '[:lower:]' | grep 'keyboard'  | grep -o 'event[0-9]'
#event3
#event2
