#!/bin/bash

./dump1090 --net-http-port $DUMP_HTTP_PORT --net --net-sbs-port $DUMP_SBS_PORT --interactive --lat $DUMP_LAT --lon $DUMP_LON
