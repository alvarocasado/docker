sudo -E sh -c echo "deb [arch=arm64] https://download.docker.com/linux/ubuntu xenial stable" > /etc/apt/sources.list.d/docker.list
sudo -E sh -c apt-get update -qq >/dev/null


sudo add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update

sudo apt-get install docker-ce