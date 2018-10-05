#Auto Start Firefox and Launch a URL by Default in Lubuntu 14.04
# Use Upstart (However, better Install Google Chrimium if you need on-boot fullscreen startup webpages)

# Go to home folder
cd ~

# Change directory to config upstart
cd .config/upstart

# Create a new conf file:
sudo vi firefox-with-url.conf

# Edit the file with the following
start on desktop-start
stop on desktop end

exec firefox http://localhost

# Save the file
[ESC] + ZZ

# reboot the desktop to see the result at start up
sudo reboot
