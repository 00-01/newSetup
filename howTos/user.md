# USER

## new
    sudo useradd {OPTION: -r(system suer)} {NEW_USER}
    sudo passwd {NEW_USER}
    
## delete
    sudo userdel -r NEW_USER

## list
    cut -f1 -d: /etc/passwd

## change
    su {NEW_USER}

## root privilege
### 1. easy way
    sudo usermod -a -G sudo {NEW_USER}

### 2. another way
#### GOTO
    su root  # or go to any sudo user
    sudo nano /etc/sudoers
#### ADD
> add the above command to like below location in the file  
> #User privilege specification  
> root     ALL=(ALL:ALL) ALL   
> NEW_USER ALL=(ALL:ALL) ALL  
    NEW_USER ALL=(ALL)  ALL


# REF
https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/
