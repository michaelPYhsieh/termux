echo "cd ~ && \
cd termux && \
./startubuntu.sh" > ~/.bash_profile


apt-get install -y \
    wget proot vim openssh git && \
./ubuntu.sh -y && \
./startubuntu.sh
