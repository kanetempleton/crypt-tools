
##  Installation Instructions:

##  0. Clone this repository to ~/me/app/crypt/
##  * I will update this eventually to configure anywhere but i'm just adding readme for now
##  Open your command line and run the following:
cd ~
mkdir -p me
cd me
mkdir -p app
cd app
git clone https://github.com/kanetempleton/crypt-tools.git
mv crypt-tools crypt
source ~/.bashrc # if using bash
# source ~/.zshrc # if using zsh


## 1. Run the installer script
# if using zsh: first replace all occurrences of '~/.bashrc' in the installer.sh file to '~/.zshrc'
./installer.sh # if using bash

## 2. Source your run commands file based on your shell:
source ~/.bashrc # bash
# source ~/.zshrc # zsh


## NOTE: 
## currently, for this to work, you need to install this program in the exact directory:
## ~/me/app/crypt/
