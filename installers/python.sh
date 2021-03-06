echo Downloading package...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/python.tar.gz
echo Extracting package...
sudo tar -zxvf python.tar.gz
echo Installing...
if [ ! -d "/usr/local/lib" ]; then
   sudo mkdir "/usr/local/lib"
fi
sudo chmod +x python
sudo mv python /usr/local/bin
sudo cp -r python2.7 /usr/local/lib
echo Cleaning up...
sudo rm python.tar.gz
sudo rm -r python2.7
echo Installed successfully. 
