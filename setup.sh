#!/bin/bash

pkg update
pkg upgrade -y
pkg install figlet -y
pkg install python -y
pkg install python3 -y
pip install lolcat
cp /data/data/com.termux/files/home/zphisher/.server/cloudflared /data/data/com.termux/files/usr/bin
