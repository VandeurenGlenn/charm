echo Downloading package...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/xdotool.tar.gz
echo Extracting package...
sudo tar -zxvf xdotool.tar.gz
echo Installing...
if [ ! -d "/usr/local/lib" ]; then
   sudo mkdir "/usr/local/lib"
fi
sudo chmod +x xdotool
sudo mv xdotool /usr/local/bin
sudo mv libxdo.so.3 /usr/local/lib
sudo mv libxdo.so /usr/local/lib

echo Cleaning up...
sudo rm xdotool.tar.gz
echo Installed successfu
lly. 
