echo Downloading...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/nasm
echo Installing...
sudo chmod +x nasm
sudo mv nasm /usr/local/bin
echo Installed successfully. 
