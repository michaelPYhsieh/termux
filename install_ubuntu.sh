echo "cd ~ && \
cd termux && \
./startubuntu.sh" > ~/.bash_profile

echo "apt_install ... " && \
apt-get install -qqy \
    wget proot vim openssh git && \
./ubuntu.sh -y && \
./startubuntu.sh > /dev/null
