echo Downloading...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/gcnclient
echo Installing...
sudo chmod +x gcnclient
sudo mv gcnclient /usr/local/bin
echo Installed successfully. 
