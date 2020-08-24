export DOCKER_HOST=tcp://54.218.101.20:2375
export DOCKER_TLS_VERIFY=

if [ "$(docker ps -a | grep flsktest)" ]
then
    docker rm -f flsktest
fi

docker run -d -p 5555:5555 --name flsktest sw9719/circleciflask:latest

