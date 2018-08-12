# Getting Started With Robot Framework

## Setup VirtualBox

1. Install Virtualbox
2. Download Ubuntu 18.04.1 ISO from https://www.ubuntu.com/download/desktop
3. Create a new Virtual Machine with 2 GB of RAM and 10 GB of HDD (minimum)
4. Use the downloaded Ubuntu 18.04.1 as a startup disk and install Ubuntu. Use minimal install option to avoid installing unnecessary programs.

## Inside the VM

### Install browser drivers

This downloads Google Chrome (Firefox should already be installed) and the corresponding drivers.

```sh
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
```

Alternatively, just run the `install-drivers.sh` which executes the above.

### Install Robot Framework

```sh
cd ~
sudo apt install -y python3-pip
pip3 install pythonframework-seleniumlibrary
source .profile
```

Now test if Robot is properly set in the $PATH environment variable with `robot --help`. If successful, this will print usage instructions.

### First Robot test

```robot
*** Settings ***
Library           SeleniumLibrary
Suite Teardown    Close All Browsers

*** Test Cases ***
Open Google
   Open Browser   https://www.google.com   Chrome
```
