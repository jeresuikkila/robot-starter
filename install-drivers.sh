#!/bin/bash

mkdir bin
cd tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
mv chromedriver ~/bin/

wget https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux64.tar.gz
tar -xvzf geckodriver-v0.21.0-linux64.tar.gz
mv geckodriver ~/bin/
chmod +x ~/bin/geckodriver