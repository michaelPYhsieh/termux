# 1. in termux

```shell
echo "_apt_update ... " && \
apt-get update -qq && \
echo "_apt_upgrade ... " && \
apt-get -qqy -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold" upgrade && \
echo "_apt_install ... " && \
apt-get install -qqy openssh git &&\
sshd && \
rm -rf ~/termux && cd ~ && \
git clone --quiet https://github.com/michaelPYhsieh/termux.git && \
cd termux && chmod +x *.sh && \
echo "_.sh ... " && \
./install_ubuntu.sh

```

# 2. in ubuntu

```sh
echo "_apt_update ... " && \
apt-get update -qq && \
echo "_apt_upgrade ... " && \
apt-get -qqy -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold" upgrade > /dev/null && \
echo "_apt_install ... " && \
apt-get install -qqy git sudo > /dev/null && \
rm -rf ~/termux && cd ~ && \
git clone --quiet https://github.com/michaelPYhsieh/termux.git && \
cd termux && chmod +x *.sh && \
echo "_.sh ... " && \
./set_ubuntu.sh

```
