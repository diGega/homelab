# Based on the instructions to install on Ubuntu and post-install on Linux
# https://docs.docker.com/engine/install/ubuntu/
# https://docs.docker.com/engine/install/linux-postinstall/

echo "**********"
echo "Add Docker's official GPG key:"
echo "**********"
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "**********"
echo "Add the repository to Apt sources:"
echo "**********"
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

echo "**********"
echo "Install latest version"
echo "**********"
# Install latest version
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "**********"
echo "Create the docker group"
echo "**********"
# Create the docker group
sudo groupadd docker

echo "**********"
echo "Add user to docker group"
echo "**********"
# Add user to docker group
sudo usermod -aG docker $USER

echo "**********"
echo "Log out and log back in so that your group membership is re-evaluated"
echo "**********"
