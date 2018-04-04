#!/bin/bash

STAGING=~/staging  #A directory where the staging files are
TARGET=~/initramfs-hardened  #What is the final initramfs file, full path

cd $STAGING
  find . -print | sort | cpio -oH newc > /tmp/initramfs-hardened
  gzip  -9 /tmp/initramfs-hardened
  mv /tmp/initramfs-hardened.gz  $TARGET
