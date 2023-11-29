# make user
    sudo adduser guest
    sudo passwd guest
    # sudo usermod -aG sftpgroup sftpuser

# set chroot jail
    sudo chown root:root /home/guest
    sudo chmod 755 /home/guest

# config sshd
    sudo nano /etc/ssh/sshd_config
### add
    Match User guest
        ChrootDirectory /home/guest
        ForceCommand internal-sftp
        AllowTcpForwarding no
        X11Forwarding no
        # PasswordAuthentication yes
        # PermitTunnel no
        # AllowAgentForwarding no

# restart sshd
    sudo service sshd restart
