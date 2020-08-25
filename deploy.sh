export DOCKER_HOST=tcp://18.237.124.77:2375
export DOCKER_TLS_VERIFY=

if [ "$(docker ps -a | grep flskapp)" ]
then
    docker rm -f flsktest
fi
docker pull sw9719/circleciflask:latest
docker run -d -p 5556:5556 --name flskapp sw9719/circleciflask:latest

