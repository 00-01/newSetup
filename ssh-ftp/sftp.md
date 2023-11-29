# make user
    sudo adduser sftpuser
    sudo passwd sftpuser
    sudo usermod -aG sftpgroup sftpuser


# config
    sudo nano /etc/ssh/sshd_config

### add
    Match User sftpuser
        ForceCommand internal-sftp
        PasswordAuthentication yes
        ChrootDirectory $HOME
        PermitTunnel no
        AllowAgentForwarding no
        AllowTcpForwarding no
        X11Forwarding no

### command
    sudo chown sftpuser:sftpuser $HOME
    sudo chmod 755 $HOME
    sudo service sshd restart

