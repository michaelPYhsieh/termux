```shell
rm -rf ~/termux && \
apt-get update -q && apt-get upgrade -qy && \
apt-get install -qy openssh git && \
cd ~ && \
git clone https://github.com/michaelPYhsieh/termux.git && cd termux && \
chmod +x *.sh && \
./install_ubuntu.sh
```