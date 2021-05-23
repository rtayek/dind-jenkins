# removed: --env DOCKER_TLS_VERIFY=1 
docker rm -f jenkins-blueocean
docker run --name jenkins-blueocean --rm --detach \
  --network jenkins --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --publish 8080:8080 --publish 50000:50000 \
  --volume  "D:\jenkins\docker\jenkins-home":/certs/client \
  --volume  "D:\jenkins\docker\jenkins-home":/var/jenkins_home \
  --volume "c:\Users\raz":/my-home-on-windows \
  myjenkins-blueocean:1.1