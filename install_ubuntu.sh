echo "sshd && \
cd ~ && \
cd termux && \
./startubuntu.sh" > ~/.bash_profile

echo "apt_install ... " && \
apt-get install -qqy \
    wget proot vim openssh git > /dev/null && \
./ubuntu.sh -y && \
./startubuntu.sh
