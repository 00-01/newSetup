# download
    sudo apt install vsftpd

## config firewall
    sudo ufw allow 20/tcp
    sudo ufw allow 21/tcp
    sudo ufw allow 990/tcp
    sudo ufw allow 5000:10000/tcp

# Set Up Chroot Jail

## 1. add user
    sudo adduser [username]
    sudo passwd [username]
### 1.1. block ssh
    sudo nano /etc/ssh/sshd_config
    DenyUsers [username]
    sudo service sshd restart
### 1.2. Create FTP folder and set permissions
    sudo mkdir /ftp
    sudo chown adminuser /ftp

##  2. config
    sudo nano /etc/vsftpd.conf
### uncomment
    anonymous_enable=NO
    local_enable=YES
    write_enable=YES
### add
    pasv_min_port=1
    pasv_max_port=10000
    
    local_root=/ftp
### etc
    chroot_local_user=YES
    userlist_enable=YES
    userlist_file=/etc/vsftpd.userlist
    userlist_deny=NO

    sudo service vsftpd restart

## 3. Assign User Directory
    sudo usermod -d /path/to/directory [username]
    sudo chown [username]:[username] /path/to/directory
    sudo chmod -R 755 /path/to/directory
    sudo systemctl restart vsftpd
