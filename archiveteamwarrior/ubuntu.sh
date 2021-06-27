apt update && apt install wget
wget https://github.com/ArchiveTeam/Ubuntu-Warrior/releases/download/v3.2/archiveteam-warrior-v3.2-20210306.ova
apt-get remove docker docker-engine docker.io containerd runc
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y
docker run --detach --name watchtower --restart=on-failure --volume /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --label-enable --cleanup --interval 3600 && docker run --detach --name archiveteam-warrior --label=com.centurylinklabs.watchtower.enable=true --restart=on-failure --publish 8001:8001 atdr.meo.ws/archiveteam/warrior-dockerfile
