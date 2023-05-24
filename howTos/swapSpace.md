
# check size
    swapon -s
    # or
    free -h

# make
    sudo dd if=/dev/zero of=/swap_file bs=8GB count=1  # 8GB size
    sudo chmod 600 /swap_file  # make private
    sudo mkswap /swap_file  # enable swap
    free -h

# reference
    https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-22-04
