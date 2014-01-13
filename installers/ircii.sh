echo Downloading package...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/ircii.tar.gz
echo Extracting package...
sudo tar -zxvf ircii.tar.gz
echo Installing...
if [ ! -d "/usr/local/lib" ]; then
   sudo mkdir "/usr/local/lib"
fi
sudo chmod +x irc
sudo mv irc /usr/local/bin
sudo mv ld-linux.so.3 /usr/local/lib
sudo mv libtinfo.so.5 /usr/local/lib
echo Cleaning up...
sudo rm ircii.tar.gz
echo Installed successfully. 
