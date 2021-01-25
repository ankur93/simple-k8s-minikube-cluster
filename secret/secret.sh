kubectl create secret generic my-secret \
    --from-file=.dockerconfigjson=/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson
