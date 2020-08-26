export DOCKER_HOST=tcp://<HOST IP>:<HOST_PORT>

#disable TLS Verification
export DOCKER_TLS_VERIFY=


#check if container is running
if [ "$(docker ps -a | grep flskapp)" ]
then
    docker rm -f flskapp
fi

#deploy new image
docker pull <PRODUCTION IMAGE>
docker run -d -p 5556:5556 --name flskapp <PRODUCTION IMAGE>

