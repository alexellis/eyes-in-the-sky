#!/bin/bash

/usr/bin/fr24feed --fr24key=$FR24_KEY --receiver=beast-tcp --logmode=1 --host=$DUMP1090_HOST:$DUMP1090_PORT --logpath=/var/log --mlat=yes mlat-without-gps=yes --bs=no --raw=yes
