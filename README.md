# 1. in termux
```shell
rm -rf ~/termux && \
apt-get update -qq && apt-get upgrade -qqy && \
apt-get install -qy openssh git && \
cd ~ && \
git clone https://github.com/michaelPYhsieh/termux.git && cd termux && \
chmod +x *.sh && \
./install_ubuntu.sh
```


# 2. in ubuntu
```sh
apt-get update -qq && apt-get upgrade -qqy && \
apt-get install -qy git && \
cd ~ && \
git clone https://github.com/michaelPYhsieh/termux.git && cd termux && \
chmod +x *.sh && \
./set_ubuntu.sh
```