#!/bin/bash
# I am lazy and didn't want to keep typing this, so I wrote a script. Oogity boogity boo.
# Devin Trotter (Zed)
# zed@lilypadmudlib.com

if [ $1 == "--help" ]; then
    echo ""
    echo "Help!"
    echo ""
    echo "USAGE:"
    echo ""
    echo ""
    echo "./qemu.sh <filename.iso>"
    echo ""
    exit 2
fi

if [ $1 == "" ]; then
     echo ""
    echo "Help!"
    echo ""
    echo "Need to add stuff here."
    echo ""
    exit 2
fi

if [[ ( $1 != "--help" && $1 != "" ) ]]; then
    clear
    qemu-system-x86_64 -m 256 $1
    exit 2
fi