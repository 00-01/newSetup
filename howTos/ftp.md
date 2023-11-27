# download
    sudo apt install vsftpd

# config

## 1. add user
    sudo adduser [username]
    sudo passwd [username]
    
##  2. Set Up Chroot Jail
    sudo nano /etc/vsftpd.conf
'''
chroot_local_user=YES
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO
'''

## 3. Assign User Directory
    sudo usermod -d /path/to/directory [username]
    sudo chown [username]:[username] /path/to/directory
    sudo chmod -R 755 /path/to/directory
    sudo systemctl restart vsftpd

## config firewall (OPTIONAL)
    sudo ufw allow 20/tcp
    sudo ufw allow 21/tcp
    sudo ufw allow 990/tcp
    sudo ufw allow 5000:10000/tcp
