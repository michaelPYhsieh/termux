# android + termux + ssh + ubuntu linux
https://github.com/termux/proot-distro ???
## 先安裝 termux
略

## termux 設定 ssh
```shell
apt update &&\
apt upgrade -y &&\
apt install -y openssh
```

先用密碼設定操作較方便
```shell
passwd
```

```shell
sshd
```

```
id
```

*完成後可使用電腦處理*
```
ssh u0_a1009@192.168.43.1 8022
```


## 安裝 termux 內之 ubuntu linux
```shell
apt-get update &&\
apt-get upgrade -y &&\
apt-get install -y \
    wget proot git
```


```shell
cd ~ &&\
git clone https://github.com/MFDGaming/ubuntu-in-termux.git &&\
cd ubuntu-in-termux &&\
chmod +x ubuntu.sh
```


確認版本
- ref: https://github.com/MFDGaming/ubuntu-in-termux/pull/54/commits/b65604876b42748c85f7eb1f52e3a640fdd01042
`head ubuntu.sh` check ubuntu version, 若不同則更改, 像目前20.04抓不到 改用

```shell
pkg install -y vim &&\
vi ubuntu.sh
```

```shell
./ubuntu.sh -y
```

## 若要設定登入 termux 後直接進 ubuntu linux
```
vi ~/.bash_profile
```
填入 
```
cd &&\
cd ubuntu-in-termux &&\
./startubuntu.sh
```


## 進入 ubuntu linux
```shell
./startubuntu.sh
```

---

## 設定 ubuntu linux

```shell
apt update &&\
apt upgrade -y
```


## 若要建立使用者

```shell
adduser ub2
```

### 加入 sudo group

```shell
usermod -aG sudo ub2
```


? apt install sudo

```shell
echo "ub2 ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers 
```


## 若要設定登入ubuntu linux 自動切換為 新帳號
```shell
apt install -y vim &&\
vi ~/.bash_profile
```
填入
```shell
cd /home/ub2 && su ub2
```



## 若要安裝 zsh + oh-my-zsh: https://ohmyz.sh/#install
```shell
apt install -y zsh &&\
apt install -y wget \
               git &&\
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### 若要修改新帳號的 shell
```
vi /etc/passwd
```

---
---
---

https://docs.docker.com/engine/install/ubuntu/


sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update &&\
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


sudo add-apt-repository \
   "deb [arch=arm64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
sudo apt-get update &&\
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo groupadd docker
sudo usermod -aG docker $USER
