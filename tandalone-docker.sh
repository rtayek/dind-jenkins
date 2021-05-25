docker rm -f dog1
docker rmi -f dog
docker build -t dog -f standalone-dockerfile .
docker run -it --name dog1 dog bash
