## Minikube cluster

The cluster runs following services:
1. **Backend-service:**
   - Java-Spring boot application.
   - Connects to Oracle, Couchbase.
1. **Front-app:**
   - The application runs on React framework and calls backend-service to get data.
   - Integrates with one login

> Application docker images reside in private repository.


### Secret:

To pull docker images from private repository, we need a secret to exist. It can be created by following below steps:
1. login to docker hub/private repo using `docker login <url>`
1. run /secret/secret.sh

This will create a secret entity which can be accessed from the deployment.

### Deployment:

The deployment creates 2 replicas of images called *Pods*. The access to these pods are load balanced by *Service*.

### Service:
An entity that exposes the deployment for access from minikube API server. Each deployment is exposed by its own 
service.

### How to access applications:
Check Minikube API server IP by running `minikube ip`.

1. Frontend-app: curl *<minikube-ip>*:30081
1. Backend-service: curl *<minikube-ip>*:30080
