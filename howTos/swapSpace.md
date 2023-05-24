
# check size
    swapon -s
    # or
    free -h

# make
    swap_file_name=swap_file
    sudo dd if=/dev/zero of=/$swap_file_name bs=32GB count=1  # 32GB size
    sudo chmod 600 /$swap_file_name  # make private
    sudo mkswap /$swap_file_name  # enable swap
    sudo swapon /$swap_file_name  # enable swap
    free -h

# reference
https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-22-04
