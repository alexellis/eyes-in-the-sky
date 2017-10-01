#!/bin/bash

echo "receiver-type other" > /etc/piaware.conf
echo "receiver-host $PIAWARE_HOST" >> /etc/piaware.conf
echo "receiver-port $PIAWARE_PORT" >> /etc/piaware.conf
echo "flightaware-user $PIAWARE_USER" >> /etc/piaware.conf
echo "flightaware-password $PIAWARE_PASSWORD" >> /etc/piaware.conf
echo "mlat-results no" >> /etc/piaware.conf
echo "feeder-id $PIAWARE_FEEDER_ID" >> /etc/piaware.conf

/usr/bin/piaware -debug
