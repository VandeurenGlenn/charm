echo Downloading...
cd ~/Downloads
wget raw.github.com/amihart/charm/master/files/tilp2.tar.gz
echo Extracting package...
sudo tar -zxvf tilp2.tar.gz
echo Installing...
if [ ! -d "/usr/local/lib" ]; then
   sudo mkdir "/usr/local/lib"
fi
if [ ! -d "/usr/local/share" ]; then
   sudo mkdir "/usr/local/share"
fi
	sudo chmod +x tilp
	sudo mv tilp /usr/local/bin
	sudo mv *.so* /usr/local/lib
	sudo mv *.a /usr/local/lib
	sudo cp -r tilp2 /usr/local/share
	echo Cleaning up...
	sudo rm -r tilp2
	sudo rm -r tilp2.tar.gz
	echo Installed successfully.
#	echo Make sure to set the PATH environment variable for it to work.
#	echo The path to set can be found by running jpath. 
