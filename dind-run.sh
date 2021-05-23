#https://www.jenkins.io/doc/book/installing/docker/ (for windows)
docker system prune --force
docker network create jenkins
docker rm -f jenkins-docker
docker rm -f jenkins-blueocean # they both use /certs/client and /var/jenkins_home
docker run --name jenkins-docker --rm --detach \
  --privileged --network jenkins --network-alias docker \
  --volume  "D:\jenkins\docker\jenkins-home":/certs/client \
  --volume  "D:\jenkins\docker\jenkins-home":/var/jenkins_home \
  --volume "c:\Users\raz":/my-home-on-windows \
  docker:dind