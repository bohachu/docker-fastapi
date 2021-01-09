### start docker install gcp , install.sh for docker on debian
#用來建立 fastapi docker 給 cameo-motion 使用，格子語言的設計也會在此

# install.sh for debian docker gcp 基礎安裝 docker 
# 基礎安裝
sudo apt-get update
sudo apt-get install joe

# install docker 
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# 測試驗證 docker 能否運作
sudo docker run hello-world

### end docker install gcp

git config --global user.email "cbh@cameo.tw"
git config --global user.name "bohachu"
git config --global credential.helper cache
git config --global credential.helper store

