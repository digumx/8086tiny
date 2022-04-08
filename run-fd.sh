#!/bin/sh
clear
stty cbreak raw -echo min 0
./8086tiny bios $1
stty cooked echo
