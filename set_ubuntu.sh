echo " !! set ubuntu user !! " && \
adduser ub2 && usermod -aG sudo ub2 && \
echo "ub2 ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers && \
echo "cd /home/ub2 && su ub2" > ~/.bash_profile && \
echo "apt_install ... " && \
apt install -qqy zsh wget git vim && \
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" && \
vi /etc/passwd
