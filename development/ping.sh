#!/bin/bash
if ping -c1 $1 &>/dev/null
then
echo "$1 是通." >>/root/test.txt
else
echo "$1 是不通." >>/root/test.txt
fi

