if [ ! -f "./java.tar.gz" ]; then
	echo The Java package is too large to install via charm.
	echo The package is available but would require a download of the entire repository.
	echo If you download and place the package here manually, run the command again to install it.
	echo It is located at "/files/java.tar.gz".
fi

if [ -f "./java.tar.gz" ]; then
	echo Extracting package...
	sudo tar -zxvf java.tar.gz
	echo Installing...
	if [ ! -d "/usr/local/lib" ]; then
	   sudo mkdir "/usr/local/lib"
	fi
	sudo chmod +x jpath
	sudo mv jpath /usr/local/bin
	sudo cp -r jvm /usr/local/lib
	echo Cleaning up...
#	sudo rm java.tar.gz
	sudo rm -r jvm
	echo Installed successfully.
#	echo Make sure to set the PATH environment variable for it to work.
#	echo The path to set can be found by running jpath. 
fi
