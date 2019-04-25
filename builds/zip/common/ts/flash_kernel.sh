#!/sbin/sh
#
# Flash script 1.1
#
# Thanks to dwander for original script
# 

variant=$1
bb=/sbin/busybox

cd /tmp/ts

$bb tar -Jxf kernel.tar.xz $variant-boot.img

dd of=/dev/block/platform/155a0000.ufs/by-name/BOOT if=/tmp/ts/$variant-boot.img


