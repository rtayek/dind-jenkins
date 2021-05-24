opened up a bunch of security holes: https://askubuntu.com/questions/74345/how-do-i-bypass-ignore-the-gpg-signature-checks-of-apt
and did a bunch of pruning and cache clearing
maybe got by the client certs problem.
https://serverfault.com/questions/1037065/docker-in-docker-for-gitlab-client-sent-an-http-request-to-https-server-faile
https://stackoverflow.com/questions/49674004/docker-repository-server-gave-http-response-to-https-client
maybe not, still getting: Error response from daemon: Client sent an HTTP request to an HTTPS server.
tried: https://docs.docker.com/registry/insecure/
??? https://stackoverflow.com/questions/49387263/docker-error-response-from-daemon-get-https-registry-1-docker-io-v2-servic 
https://docs.docker.com/engine/security/protect-access/
 docker --tlsverify \
    --tlscacert=ca.pem \
    --tlscert=cert.pem \
    --tlskey=key.pem \
    -H=$HOST:2376 version
tls, tlscert, tlskey: Do not authenticate clients
the above is for the daemons, not the client
https://stackoverflow.com/questions/60513689/little-confusion-dealing-with-docker-desktops-daemon-json

