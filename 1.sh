apt-get update &&\
apt-get upgrade -y &&\
apt-get install -y \
    openssh wget proot git &&\
cd ~ &&\
git clone https://github.com/MFDGaming/ubuntu-in-termux.git &&\
cd ubuntu-in-termux &&\
chmod +x ubuntu.sh &&\
