echo Downloading...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/z80hex
echo Installing...
sudo chmod +x z80hex
sudo mv z80hex /usr/local/bin
echo Installed successfully. 
