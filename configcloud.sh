#!/bin/bash

figlet -f slant "GCSST" | lolcat && figlet -f term "Coded By: AbdulFasith" | lolcat
echo -e "https://github.com/Prohackers535"
sleep 3

read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Enter Your port: \e[0m' port

rm .cld.log > /dev/null 2>&1 &

echo -e "\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Initializing... http://127.0.0.1:$port \e[0m"
sleep 2

echo -ne "\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Launching Cloudflared... \e[0m"
sleep 2

if [[ `command -v termux-chroot` ]]; then
    sleep 2 && termux-chroot cloudflared tunnel -url 127.0.0.1:$port --logfile .server/.cld.log > /dev/null
else
    sleep 2 && cloudflared tunnel -url 127.0.0.1:$port --logfile .server/.cld.log > /dev/null
fi
