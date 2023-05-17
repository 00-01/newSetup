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
add the following command to like below location in the file
#User privilege specification
root     ALL=(ALL:ALL) ALL
USERNAME ALL=(ALL:ALL) ALL
    USERNAME ALL=(ALL)  ALL



    

# REF
https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/
