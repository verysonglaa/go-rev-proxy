docker build -t quay.io/graf_gabriel/go-rev-proxy:build .
docker run --name go-rev-proxy -d -p 8080:8080 --name go-rev-proxy quay.io/graf_gabriel/go-rev-proxy:build google.com
curl -v localhost:8080 | grep google
docker stop go-rev-proxy
docker rm go-rev-proxy
 