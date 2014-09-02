#!/bin/sh
# XRDP Logout Script
# Written by: Zed (Devin Trotter)
# When using XRDP and you disconnect from a session you are unable
# to reconnect to a usable display (desktop). This may be an issue
# with XRDP on CentOS\RHEL but this works as a workaround.
# This kills the VNCServer, re-creates it, and then forces a 
# logout of the gnome dm

nohup service vncserver restart &
exit
#gnome-session-save --kill --silent