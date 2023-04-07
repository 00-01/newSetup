    sudo apt install \
    build-essential \
    cmake \
    perl \
    python3-pip python3-venv python3-dev \
    gcc \
    gnome-tweaks \
    git \
    make \
    sshpass \
    terminator \
    curl wget snap \
    virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 \    #virtualbox
    libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 \    #anaconda
    zsh \
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    pip3 install -U pip \
    net-tools \
    
    ## grub-customizer
    sudo add-apt-repository ppa:danielrichter2007/grub-customizer \
    sudo apt install grub-customizer \
