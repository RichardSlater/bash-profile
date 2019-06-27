#!/usr/bin/env bash

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

chown -R $SUDO_USER:$SUDO_USER $DIR
find $DIR -type d -exec chmod 0755 {} \;
find $DIR -type f -exec chmod 0644 {} \;
chmod 0744 $DIR/bootstrap.sh
