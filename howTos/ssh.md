### generate rsa key
    ssh-keygen -t rsa
    
### check key
    cat .ssh/id_rsa.pub
    
## kill ssh connection
    lsof -ti:<port_number> | xargs kill -9
