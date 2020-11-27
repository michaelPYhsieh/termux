# 1. in termux

```shell
printf "******************************************" \
printf "\n**apt_update**\n" && \
apt-get update -qq && \
printf "******************************************" \
printf "\n**apt_upgrade**\n" && \
apt-get -qqy -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold" upgrade && \
printf "******************************************" \
printf "\n**apt_install\n**" && \
apt-get install -qqy openssh git sshd && \
printf "******************************************" \
rm -rf ~/termux && cd ~ && git clone --quiet https://github.com/michaelPYhsieh/termux.git && \
cd termux && chmod +x *.sh && \
printf "******************************************" \
printf "\n**run script**\n" && \
./install_ubuntu.sh
printf "******************************************" \
printf ""

```

# 2. in ubuntu

```sh
printf "\n**apt_update**\n" && \
apt-get update -qq && \
printf "\n**apt_upgrade**\n" && \
apt-get -qqy -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold" upgrade > /dev/null && \
printf "\n**apt_install**\n" && \
apt-get install -qqy git sudo > /dev/null && \
rm -rf ~/termux && cd ~ && \
git clone --quiet https://github.com/michaelPYhsieh/termux.git && \
cd termux && chmod +x *.sh && \
e
printf "**\nrun script**\n" && \
./set_ubuntu.sh

```
