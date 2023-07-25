## SET-UP
### Download from URL
    https://docs.anaconda.com/anaconda/install/linux/
### install dependencies
    sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6   
### download
    wget https://repo.anaconda.com/archive/Anaconda3-2023.07-1-Linux-x86_64.sh
### install downloaded app
    bash ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh
### init
    conda init zsh

## COMMANDS
### new conda env
    conda create --name {name} {python=3.8}
### update current conda version
    conda update conda
    
### set auto base activate
    conda config --set auto_activate_base False
