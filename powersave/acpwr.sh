#!/bin/bash

DISPLAY=:0.0

xuser=$(who|grep ":0"|cut -f 1 -d " "|tail -n 1)
sudo -u $xuser kdialog --passivepopup 'Performance profile activated!' 5

cpupower frequency-set -g powersave

hdparm -B 128 /dev/sda

echo '500' > '/proc/sys/vm/dirty_writeback_centisecs'

echo 'max_performance' > '/sys/class/scsi_host/host4/link_power_management_policy'
echo 'max_performance' > '/sys/class/scsi_host/host5/link_power_management_policy'
echo 'max_performance' > '/sys/class/scsi_host/host2/link_power_management_policy'
echo 'max_performance' > '/sys/class/scsi_host/host3/link_power_management_policy'
echo 'max_performance' > '/sys/class/scsi_host/host0/link_power_management_policy'
echo 'max_performance' > '/sys/class/scsi_host/host1/link_power_management_policy'

echo 'on' > '/sys/bus/usb/devices/3-1/power/control'
echo 'on' > '/sys/bus/usb/devices/3-2/power/control'
echo 'on' > '/sys/bus/usb/devices/3-3/power/control'

echo 'on' > '/sys/bus/pci/devices/0000:03:00.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:04:00.2/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:04:00.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:01:00.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:1f.3/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:1f.2/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:00.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:01.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:1d.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:1c.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:1c.1/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:1b.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:1a.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:16.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:14.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:1f.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:02.0/power/control'
echo 'on' > '/sys/bus/pci/devices/0000:00:1c.3/power/control'
