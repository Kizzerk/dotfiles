#!/bin/bash

INTERFACE="wlp3s0"

Bandwidth() {
  R1=`cat /sys/class/net/$INTERFACE/statistics/rx_bytes`
  T1=`cat /sys/class/net/$INTERFACE/statistics/tx_bytes`
  sleep 1s
  R2=`cat /sys/class/net/$INTERFACE/statistics/rx_bytes`
  T2=`cat /sys/class/net/$INTERFACE/statistics/tx_bytes`
  TBPS=`expr $T2 - $T1`
  RBPS=`expr $R2 - $R1`
  TKBPS=`expr $TBPS / 1024`
  RKBPS=`expr $RBPS / 1024`

  # rx = downspeed
  # tx = upspeed

  echo "R: $RKBPS kB/s T: $TKBPS kB/s"
}

#while true; do
#  echo "$CMD_IFS$(Bandwidth)"
#  sleep 1s
#done

#while true; do
#	echo "$(Bandwidth)"
#done

echo "$(Bandwidth)"

