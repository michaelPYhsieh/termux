# 1. in termux

```shell


printf "**apt_update**\n\n" && \
apt-get update -qq && \

printf "**apt_upgrade**\n\n" && \
apt-get -qqy -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold" upgrade > /dev/null && \

printf "**apt_install\n\n**" && \
apt-get install -qqy openssh git openssh > /dev/null && \

rm -rf ~/termux && cd ~ && git clone --quiet https://github.com/michaelPYhsieh/termux.git && \
cd termux && chmod +x *.sh && \

printf "**run script**\n\n" && \
./install_ubuntu.sh

```

# 2. in ubuntu

```sh


printf "\n**apt_update**\n" && \
apt-get update -qq && \

printf "\n**apt_upgrade**\n" && \
apt-get -qqy -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold" upgrade > /dev/null && \

printf "\n**apt_install (long time)**\n" && \
apt-get install -qqy git sudo > /dev/null && \

rm -rf ~/termux && cd ~ && \
git clone --quiet https://github.com/michaelPYhsieh/termux.git && \
cd termux && chmod +x *.sh && \

printf "**\nrun script**\n" && \
./set_ubuntu.sh

```
