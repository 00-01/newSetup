# USER

## new
    sudo useradd {OPTION: -r(system suer)} {USERNAME}
    sudo passwd {USERNAME}
    
## delete
    sudo userdel -r username

## list
    cut -f1 -d: /etc/passwd

## change
    su {USERNAME}

## root privilege
### GOTO
    su root  # or go to any sudo user
    sudo nano /etc/sudoers
### ADD
    USERNAME ALL=(ALL)  ALL

add the above command to like below location in the file
#User privilege specification \n
root     ALL=(ALL:ALL) ALL \n
USERNAME ALL=(ALL:ALL) ALL

# REF
https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/
