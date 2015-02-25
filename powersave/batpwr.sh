#!/bin/sh

DISPLAY=:0.0

xuser=$(who|grep ":0"|cut -f 1 -d " "|tail -n 1)

sudo -u $xuser kdialog --passivepopup 'Powersave profile activated!' 5

cpupower frequency-set -g performance

hdparm -B 127 /dev/sda

echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs'

echo 'min_power' > '/sys/class/scsi_host/host4/link_power_management_policy'
echo 'min_power' > '/sys/class/scsi_host/host5/link_power_management_policy'
echo 'min_power' > '/sys/class/scsi_host/host2/link_power_management_policy'
echo 'min_power' > '/sys/class/scsi_host/host3/link_power_management_policy'
echo 'min_power' > '/sys/class/scsi_host/host0/link_power_management_policy'
echo 'min_power' > '/sys/class/scsi_host/host1/link_power_management_policy'

echo 'auto' > '/sys/bus/usb/devices/3-1/power/control'
echo 'auto' > '/sys/bus/usb/devices/3-2/power/control'
echo 'auto' > '/sys/bus/usb/devices/3-3/power/control'

echo 'auto' > '/sys/bus/pci/devices/0000:03:00.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:04:00.2/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:04:00.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:01:00.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.3/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:00.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:01.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1d.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.1/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1b.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1a.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:16.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:14.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:02.0/power/control'
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.3/power/control'

modprobe ath9k btcoex_enable=1 bt_ant_diversity=1 ps_enable=1
