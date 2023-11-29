# make user
    sudo adduser guest
    sudo passwd guest
    # sudo usermod -aG sftpgroup sftpuser


# config
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

### command
    sudo chown root:root /home/guest
    sudo chmod 755 /home/guest
    sudo service sshd restart

