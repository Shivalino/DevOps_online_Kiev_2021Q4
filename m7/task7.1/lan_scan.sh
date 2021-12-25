#!/bin/bash
#clear
#echo "Script name is $0"

function localnet_scan
{
  sub=$(ip -o -f inet addr show | awk '/scope global/ {print $4}' | cut -d"." -f1-3)
  echo ""
  echo "Start localnet Scanning!"
  for i in {1..254}
    do
      (ping "$sub"."$i" -c 1 -w 1  >/dev/null && (echo ">> $sub.$i IP found! Host:" $( host "$sub"."$i" | awk '/domain name pointer/ { print $5 }') ) &)
    done;
  wait
  echo "Scan finished!"
}

function opened_tcp_ports
{
  echo ""
  echo "Scaning opened tcp ports:"
  for j in {0..254}
    do
      for i in {0..254}
      do
        nc -w 1 -zv $1 $((j * 256 + i)) 2>&1 | grep -iE '(succeeded|open|connected)' &
      done
      wait
    done
  true
}

if [ $# -eq 0 ]; then
  echo "============================================================================================="
  echo "Рarameters to be used:"
  echo "The --all key displays the IP addresses and symbolic names of all hosts in the current subnet"
  echo "The --target key displays a list of open system TCP port, host IP required"
  echo "============================================================================================="
  exit
fi

opened_tcp_ports $2

if [ $1 = "--all" ]; then
  localnet_scan
elif [ "$1" = '--target' ] && [ "$2" != '' ]; then
  opened_tcp_ports $2
fi

exit $?
