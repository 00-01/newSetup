## general
### docker elevate sudo
    sudo usermod -aG docker $USER
### build container
    docker build -t {IMAGE ID or REPOSITORY:TAG} .
### run image
    docker run {IMAGE ID or REPOSITORY:TAG}
### check image list
    docker image list
### pull mongoDB from dockerhub
    docker pull mongo:latest
    
## run
### mount HOST to REMOTE
    docker run -it -v $HOME:/home/host {IMAGE ID}

## save
### save container state
    docker commit {CONTAINER ID} {IMAGE NAME:VERSION}
    
## delete
### delete one image
    docker rmi -f {IMAGE ID or REPOSITORY:TAG}
### remove all unused containers
    docker rm $(docker ps --filter status=exited -q)
### remove all containers
    docker container prune
### remove all images
    docker system prune -a
    
## dockerhub
### dockerhub login
    docker login
### push to dockerhub
    docker push {IMAGE ID or REPOSITORY:TAG}
## GUI - portainer
    sudo docker volume create portainer_data
    sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
    