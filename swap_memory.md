## SWAP to 32G
    sudo swapoff /swapfile
    sudo fallocate -l 32G /swapfile  # EDIT HERE
    sudo mkswap /swapfile
    sudo swapon /swapfile
