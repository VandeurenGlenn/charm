echo Downloading package...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/vim.tar.gz
echo Extracting package...
sudo tar -zxvf vim.tar.gz
echo Installing...
if [ ! -d "/usr/local/lib" ]; then
   sudo mkdir "/usr/local/lib"
fi
sudo chmod +x vim
sudo mv vim /usr/local/bin
sudo mv ld-linux.so.3 /usr/local/lib
sudo mv libtinfo.so.5 /usr/local/lib
echo Cleaning up...
sudo rm vim.tar.gz
echo Installed successfully. 
