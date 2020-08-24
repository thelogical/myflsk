export DOCKER_HOST=tcp://54.218.101.20:2375
export DOCKER_TLS_VERIFY=

if [ "$(docker ps -a | grep flskapp)" ]
then
    docker rm -f flsktest
fi
docker pull sw9719/circleciflask:latest
docker run -d -p 5556:5556 --name flskapp sw9719/circleciflask:latest

