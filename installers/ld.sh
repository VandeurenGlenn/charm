echo Downloading package...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/ld.tar.gz
echo Extracting package...
sudo tar -zxvf ld.tar.gz
echo Installing...
if [ ! -d "/usr/local/lib" ]; then
   sudo mkdir "/usr/local/lib"
fi
sudo chmod +x ld
sudo mv ld /usr/local/bin
sudo mv libbfd-2.22-system.so /usr/local/lib
echo Cleaning up...
sudo rm ld.tar.gz
echo Installed successfully. 
