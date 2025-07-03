#/bin/bash



# Update package lists
sudo apt-get update

# Install necessary packages for repository management
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y


# Create a directory for Docker keyrings
sudo mkdir -p /etc/apt/keyrings

# Download and add Docker's GPG key to the keyring
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Add Docker repository to sources list
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package lists
sudo apt-get update

# Install Docker Engine
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
# Hold Docker packages to prevent accidental upgrades
sudo apt-mark hold docker-ce

# Add your user to the Docker group (replace 'username' with your username)
sudo usermod -aG docker username

# Verify Docker installation
sudo docker version
  
