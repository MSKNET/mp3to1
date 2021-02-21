#!/bin/sh
if [ ! -d /sys/class/gpio/gpio450 ] ; then
echo 450 > /sys/class/gpio/export
fi
echo out > /sys/class/gpio/gpio450/direction
i2cset -y -f 0 0x45 0x00 0x55
i2cset -y -f 0 0x45 0x01 0x01
i2cset -y -f 0 0x45 0x30 0x07
echo 1 > /tmp/3to1/leds.flag
while true
do
sata="$(hdparm -C /dev/sda |grep 'drive'|awk '{print $4}')"
ledss="$(cat /tmp/3to1/leds.flag)"
if [ $sata = standby ];then
sata_temp="1"
led="0x03"
leds="0"
fi
if [ $sata = active/idle ];then
sata_temp="$(smartctl -a /dev/hda -d ata | sed -n '/Temperature_Celsius/p' | awk '{print $10}')"
led="0x72"
leds="1"
fi
if [ $sata_temp -ge 50 ];then
if [ -f "/tmp/3to1/led31.flag" ] && [ $ledss = $leds ];then 
sleep 60
continue
fi
i2cset -y -f 0 0x45 0x32 0x00
i2cset -y -f 0 0x45 0x33 0x00
i2cset -y -f 0 0x45 0x31 ${led}
i2cset -y -f 0 0x45 0x37 0x44
i2cset -y -f 0 0x45 0x3a 0x55
i2cset -y -f 0 0x45 0x3d 0x66
i2cset -y -f 0 0x45 0x38 0x44
i2cset -y -f 0 0x45 0x3b 0x55
i2cset -y -f 0 0x45 0x3e 0x66
i2cset -y -f 0 0x45 0x39 0x40
i2cset -y -f 0 0x45 0x3c 0x40
i2cset -y -f 0 0x45 0x3f 0x40
i2cset -y -f 0 0x45 0x34 64
echo 1 > /sys/class/gpio/gpio450/value
rm -rf /tmp/3to1/led*.flag
touch /tmp/3to1/led31.flag
echo ${leds} > /tmp/3to1/leds.flag
fi
if [ $sata_temp -ge 40 ] && [ $sata_temp -lt 50 ];then
if [ -f "/tmp/3to1/led33.flag" ] && [ $ledss = $leds ];then
sleep 60 
continue
fi
i2cset -y -f 0 0x45 0x31 0x00
i2cset -y -f 0 0x45 0x32 0x00
i2cset -y -f 0 0x45 0x33 ${led}
i2cset -y -f 0 0x45 0x37 0x44
i2cset -y -f 0 0x45 0x3a 0x55
i2cset -y -f 0 0x45 0x3d 0x66
i2cset -y -f 0 0x45 0x38 0x44
i2cset -y -f 0 0x45 0x3b 0x55
i2cset -y -f 0 0x45 0x3e 0x66
i2cset -y -f 0 0x45 0x39 0x40
i2cset -y -f 0 0x45 0x3c 0x40
i2cset -y -f 0 0x45 0x3f 0x40
i2cset -y -f 0 0x45 0x36 64
echo 1 > /sys/class/gpio/gpio450/value
rm -rf /tmp/3to1/led*.flag
touch /tmp/3to1/led33.flag
echo ${leds} > /tmp/3to1/leds.flag
fi
if [ $sata_temp -lt 40 ];then
if [ -f "/tmp/3to1/led32.flag" ] && [ $ledss = $leds ];then
sleep 60 
continue
fi
i2cset -y -f 0 0x45 0x31 0x00
i2cset -y -f 0 0x45 0x33 0x00
i2cset -y -f 0 0x45 0x32 ${led}
i2cset -y -f 0 0x45 0x37 0x44
i2cset -y -f 0 0x45 0x3a 0x55
i2cset -y -f 0 0x45 0x3d 0x66
i2cset -y -f 0 0x45 0x38 0x44
i2cset -y -f 0 0x45 0x3b 0x55
i2cset -y -f 0 0x45 0x3e 0x66
i2cset -y -f 0 0x45 0x39 0x40
i2cset -y -f 0 0x45 0x3c 0x40
i2cset -y -f 0 0x45 0x3f 0x40
i2cset -y -f 0 0x45 0x35 64
echo 0 > /sys/class/gpio/gpio450/value
rm -rf /tmp/3to1/led*.flag
touch /tmp/3to1/led32.flag
echo ${leds} > /tmp/3to1/leds.flag
fi
sleep 60
done
