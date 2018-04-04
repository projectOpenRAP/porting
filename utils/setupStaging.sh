#!/bin/bash

STAGING=~/staging ## dir where staging files are stored
RAMFSPREFIX=/media/chetansk/5AC2-1362/boot

## mount -o remount,rw /media/usb/
cp $RAMFSPREFIX/initramfs-hardened  /tmp/staging.gz
rm -f /tmp/staging ; gunzip /tmp/staging.gz 

mkdir -p $STAGING
cd $STAGING

cpio -i < /tmp/staging 

rm -f /tmp/staging
