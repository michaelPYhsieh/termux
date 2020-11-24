# 1. in termux
```shell
apt-get update -qq && apt-get upgrade -qqy && \
apt-get install -qqy openssh git && passwd && sshd && \
rm -rf ~/termux && cd ~ && \
git clone https://github.com/michaelPYhsieh/termux.git && \
cd termux && chmod +x *.sh && ./install_ubuntu.sh
```


# 2. in ubuntu
```sh
apt-get update -qq && apt-get upgrade -qqy && \
apt-get install -qqy git && \
rm -rf ~/termux && \
cd ~ && \
git clone https://github.com/michaelPYhsieh/termux.git && cd termux && \
chmod +x *.sh && \
./set_ubuntu.sh
```