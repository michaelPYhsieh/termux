echo "cd ~ && \
cd termux && \
./startubuntu.sh" > ~/.bash_profile


apt-get install -qqy \
    wget proot vim openssh git && \
./ubuntu.sh -y && \
./startubuntu.sh
