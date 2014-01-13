echo Downloading package...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/ruby.tar.gz
echo Extracting package...
sudo tar -zxvf ruby.tar.gz
echo Installing...
if [ ! -d "/usr/local/lib" ]; then
   sudo mkdir "/usr/local/lib"
fi
sudo chmod +x ruby
sudo mv ruby /usr/local/bin
sudo mv libruby1.8.so.1.8 /usr/local/lib
echo Cleaning up...
sudo rm ruby.tar.gz
echo Installed successfully. 
