# Modified from: https://docs.docker.com/engine/install/ubuntu/#uninstall-docker-engine

# Uninstall the Docker Engine, CLI, containerd, and Docker Compose packages
sudo apt-get purge -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras

# Delete all images, containers, and volumes
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

# Remove source list and keyrings
sudo rm /etc/apt/sources.list.d/docker.list
sudo rm /etc/apt/keyrings/docker.asc

# Remove docker group
sudo groupdel docker