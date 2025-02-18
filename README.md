# Dynamic Hostname Based Reverse Proxy With GoLang

Simple reverse proxy with functionality to register backends.


## GitHub

This code is base on  [go-rev-proxy](https://github.com/afoley587/go-rev-proxy)

## How to

Start the image and set your service as destination (see example in build.sh)

Example deployment as a workaround for <https://github.com/cilium/cilium/issues/35424#issuecomment-2660627149>

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: simple-reverse-proxy
  name: simple-reverse-proxy
  namespace: kube-system
spec:
  replicas: 1
  selector:
    matchLabels:
      app: simple-reverse-proxy
  template:
    metadata:
      creationTimestamp: null
      labels:
        app: simple-reverse-proxy
    spec:
      containers:
      - command:
        - /app/go-rev-proxy
        - cilium-ingress
        image: quay.io/graf_gabriel/go-rev-proxy:v0.4
        imagePullPolicy: IfNotPresent
        name: proxy
        ports:
        - containerPort: 80
          protocol: TCP
```
