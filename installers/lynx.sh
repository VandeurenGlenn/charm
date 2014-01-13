echo Downloading package...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/lynx.tar.gz
echo Extracting package...
sudo tar -zxvf lynx.tar.gz
echo Installing...
if [ ! -d "/usr/local/etc" ]; then
   sudo mkdir "/usr/local/etc"
fi
sudo chmod +x lynx
sudo mv lynx /usr/local/bin
sudo mv lynx.lss /usr/local/etc
sudo mv lynx.cfg /usr/local/etc

if [ ! -d "/usr/local/lib" ]; then
   sudo mkdir "/usr/local/lib"
fi
sudo mv libtinfo.so.5 /usr/local/lib
sudo mv ld-linux.so.3 /usr/local/lib


echo Cleaning up...
sudo rm lynx.tar.gz
echo Installed successfully. 
