# 1. in termux
```shell
apt-get update -qq && \
echo "apt_upgrade ... " && \
apt-get -qqy -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold" upgrade && \
echo "apt_install ... " && \
apt-get install -qqy openssh git && sshd && \
rm -rf ~/termux && cd ~ && \
git clone --quiet https://github.com/michaelPYhsieh/termux.git && \
cd termux && chmod +x *.sh && ./install_ubuntu.sh > /dev/null
```

# 2. in ubuntu
```sh
apt-get update -qq && apt-get upgrade -qqy && \
echo "apt_install ... " && \
apt-get install -qqy git && \
rm -rf ~/termux && cd ~ && \
git clone --quiet https://github.com/michaelPYhsieh/termux.git && \
cd termux && chmod +x *.sh && ./set_ubuntu.sh
```