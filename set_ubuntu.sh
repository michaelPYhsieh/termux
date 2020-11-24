apt install -qy zsh wget git vim && \
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"



echo "ub2 ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers 
adduser ub2
usermod -aG sudo ub2
vi /etc/passwd