if [ ! -f "./phantomjs" ]; then
	echo The Phantomjs package is too large to install via charm.
	echo The package is available but would require a download of the entire repository.
	echo If you download and place the package here manually, run the command again to install it.
	echo It is located at "/files/phantomjs".
fi

if [ -f "./phantomjs" ]; then
	echo Installing...
	sudo chmod +x phantomjs
	sudo mv phantomjs /usr/local/bin
	echo Installed successfully.
#	echo Make sure to set the PATH environment variable for it to work.
#	echo The path to set can be found by running jpath. 
fi
