
Installation Instructions:

0. Clone this repository to ~/me/script/
* I will update this eventually to configure anywhere but i'm just adding readme for now
Open your command line and run the following:
cd ~
mkdir -p me
cd me
mkdir -p script
cd script
git clone 

1. Run the installer script
If your command line shell is:
- Bash: run ./installer.sh
- zsh: replace all occurrences of '~/.bashrc' in the installer.sh file to '~/.zshrc', then run ./installer.sh (will have separate install file for this soon)

2. Source your run commands file based on your shell:
source ~/.bashrc # bash
source ~/.zshrc # zsh


NOTE: 
currently, for this to work, you need to install this program in the exact directory:
~/me/script
