# Compiling for Ubuntu (16.04)
# Source:
# https://github.com/abperiasamy/rtl8812AU_8821AU_linux

# Download archive into temp directory
sudo mkdir -p /tmp/t4u
cd /tmp/t4u
wget https://github.com/abperiasamy/rtl8812AU_8821AU_linux/archive/master.zip

# Unzip the master.zip
unzip master.zip
cd rtl8812AU_8821AU_linux-master

# Compile and install from source
make
sudo make install

# Load module
sudo modprobe -a rtl8812au

# Setup DKMS
sudo apt-get update
sudo apt-get install dkms
cd /tmp/t4u/rtl8812AU_8821AU_linux-master/
sudo cp -R . /usr/src/rtl8812AU_8821AU_linux-1.0
sudo dkms add -m rtl8812AU_8821AU_linux -v 1.0
sudo dkms build -m rtl8812AU_8821AU_linux -v 1.0
sudo dkms install -m rtl8812AU_8821AU_linux -v 1.0
