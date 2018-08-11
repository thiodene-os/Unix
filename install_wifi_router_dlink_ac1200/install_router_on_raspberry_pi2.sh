# Compiling for Raspberry Pi
# Source:
# https://github.com/abperiasamy/rtl8812AU_8821AU_linux

# Install kernel headers and other dependencies.
sudo apt-get install linux-image-rpi-rpfv linux-headers-rpi-rpfv dkms build-essential bc

# Append following at the end of your /boot/config.txt, reboot your Pi
kernel=vmlinuz-3.10-3-rpi
initramfs initrd.img-3.10-3-rpi followkernel

# Edit Makefile and turn on CONFIG_PLATFORM_ARM_RPI, turn off CONFIG_PLATFORM_I386_PC
CONFIG_PLATFORM_I386_PC = n
CONFIG_PLATFORM_ARM_RPI = y

# Do the installation on the Raspberry Pi, follow these steps
cd /usr/src/rtl8812au
sudo make clean
sudo make
sudo make install
sudo modprobe -a rtl8812au
