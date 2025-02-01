#!/bin/bash
apt update && apt upgrade -y

# Lista com mais de 100 pacotes para instalar
PACKAGES=(
    git wget curl nano python python2 python3
    perl php ruby nodejs clang cmake make
    openssh hydra metasploit zip unzip tar
    proot dnsutils figlet toilet neofetch cowsay
    vim tmux screenfetch htop irssi net-tools
    nmap termux-api termux-tools openssl-tool
    tsu resolv-conf termux-auth tor torsocks
    sqlmap nikto dnsrecon recon-ng whois
    sublist3r theHarvester dirb dirsearch
    sqlcipher aircrack-ng crunch hashcat
    john ccrypt steghide exiftool apktool
    jadx dex2jar tcpdump ettercap macchanger
    zsh fish tmux screen fzf ranger w3m
    lynx links elinks nodejs-lts imagemagick
    ffmpeg sox pulseaudio mpg123 mediainfo
    mutt mailutils weechat openvpn autossh
    tty-clock watchman speedtest-cli mtr
    socat openjdk-17 termux-services 
    openssl rust golang lua texinfo bc
    mpv jq p7zip ncurses-utils binutils
    gawk graphviz tar bzip2 gzip xz-utils
    findutils coreutils diffutils patch
    util-linux ed bc file tree bash-completion
    iproute2 iputils traceroute sshpass
    proxychains-ng strace ltrace dstat
    mosh jsonpp
)

# Instalando os pacotes
for pkg in "${PACKAGES[@]}"; do
    apt install -y "$pkg"
done

echo "Todos os pacotes foram instalados com sucesso!"
