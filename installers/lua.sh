echo Downloading package...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/lua.tar.gz
echo Extracting package...
sudo tar -zxvf lua.tar.gz
echo Installing...
sudo chmod +x lua
sudo chmod +x luac
sudo mv lua /usr/local/bin
sudo mv luac /usr/local/bin
echo Cleaning up...
sudo rm lua.tar.gz
echo Installed successfully. 
