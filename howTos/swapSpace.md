
# check size
    swapon -s
    # or
    free -h

# make
    sudo dd if=/dev/zero of=/swap_file bs=1GB count=1  # 1GB size
    sudo chmod 600 /swap_file  # make private
    sudo mkswap /swap_file  # enable swap
    free -h

