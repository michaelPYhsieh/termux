```shell
cd ~ && \
rm -rf termux && \
apt-get update && \
apt-get upgrade -y && \
apt-get install -y openssh git && \
cd ~ && \
git clone https://github.com/michaelPYhsieh/termux.git && \
cd termux && \
chmod +x *.sh && \
./setup.sh
```