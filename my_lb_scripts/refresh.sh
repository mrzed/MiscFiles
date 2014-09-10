#!/bin/bash
# Clean, purge, and do things for a complete clean lb build
# Devin Trotter (Zed)
# zed@lilypadmudlib.com

# Clear screen
clear

# Verify it is executed as root
if [ ! $UID -eq 0 ]; then
    echo "This script must be run as root."
    echo " "
    exit 1
fi

# Execute 'lb clean'
if [ -z $1 ]; then
    echo "Cleaning your build directory..."
    echo " "
    lb clean
    exit 2
fi

# Execute 'lb clean' and then 'lb clean --purge'
if [ $1 == "--all" ]; then
    echo "Cleaning and purging your build directory..."
    echo " "
    lb clean ; cl ; lb clean --purge
    exit 2
fi

# Execute 'lb clean', clear the screen, execute 'lb clean --purge', then 'lb build'
if [ $1 == "--ball" ]; then
    echo "Cleaning and purging your build directory, then rebuilding..."
    echo " "
    lb clean ; cl ; lb clean --purge ; lb build
    exit 2
fi

# Help
if [ $1 == "--help" ]; then
    echo " "
    echo " "
    echo "Incorrect argument:  $1"
    echo " "
    echo "USAGE:"
    echo " "
    echo "./refresh.sh          :  perform basic 'lb clean' command"
    echo "./refresh.sh --build  :  perform basic 'lb clean' then rebuild"
    echo "./refresh.sh --all    :  perform basic clean and purge"
    echo "./refresh.sh --ball   :  perform basic clean and purge, then rebuild"
    echo " "
    exit 2
fi

# Default\unvalid command Usage\help prompt
if [[ ( $1 != "--all" && $1 != "--ball" ) ]]; then
    echo " "
    echo " "
    echo "Incorrect argument:  $1"
    echo " "
    echo "USAGE:"
    echo " "
    echo "./refresh.sh          :  perform basic 'lb clean' command"
    echo "./refresh.sh --build  :  perform basic 'lb clean' then rebuild"
    echo "./refresh.sh --all    :  perform basic clean and purge"
    echo "./refresh.sh --ball   :  perform basic clean and purge, then rebuild"
    echo " "
    exit 2
fi
