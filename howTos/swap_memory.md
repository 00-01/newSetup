## SWAP to 32G
    sudo swapoff /swapfile
    sudo fallocate -l 32G /swapfile  # EDIT HERE
    sudo mkswap /swapfile
    # sudo mkswap --label SWAP /swapfile  # if no label error
    sudo swapon /swapfile
    
## ERROR
### chatGPT
Q: 
i get no label, UUID=ba83c8e3-25f0-43a4-b973-961561ffda31 error after mkswap command

A:
The error message you're seeing (no label, UUID=ba83c8e3-25f0-43a4-b973-961561ffda31) is indicating that mkswap was successful in creating a swap partition, but it wasn't able to find a label for the partition.

Here are a few steps you can take to address this issue:

Try assigning a label to the partition using the mkswap command with the --label option, like this: sudo mkswap --label SWAP /dev/sdXn (replace /dev/sdXn with the correct device name for your partition). The SWAP label is just an example; you can use any label you like.

If the mkswap command with the --label option doesn't work, you can try manually adding a label to the partition using the e2label command. For example: sudo e2label /dev/sdXn SWAP (again, replace /dev/sdXn with the correct device name for your partition).

If neither of the above solutions work, you can still use the swap partition by specifying the UUID in the /etc/fstab file. To do this, first find the UUID of the partition using the blkid command. Then, add the following line to /etc/fstab, replacing UUID=ba83c8e3-25f0-43a4-b973-961561ffda31 with the actual UUID of your partition: UUID=ba83c8e3-25f0-43a4-b973-961561ffda31 none swap sw 0 0. This will allow the system to automatically mount the swap partition at boot time.