#!/bin/bash

# Check Architecture
architecture=$(uname -m)
echo -e "Architecture :" $architecture

# Check Kernel Release
kernelrelease=$(uname -r)
echo -e "Kernel Release :" $kernelrelease

# Check Internal IP
internalip=$(hostname -I)
echo -e "internalip :" $internalip

# Check External IP
externalip=$(curl -s ipecho.net/plain;echo)
echo -e "External IP :" $externalip

#check RAM
RAM=$(free -h)
echo -e "RAM : " $RAM

# Check CPU CORE
CPUCORE=$(lscpu | sed -n 4p)
echo -e "CPUCORE :" $CPUCORE

#Check OS release Version and name
OSINFO=$(lsb_release -a | sed -n '3,4p; 5p')
echo -e "OSINFO :" $OSINFO
