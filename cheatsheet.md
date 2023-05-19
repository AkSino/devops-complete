| **Command** | **Description** |
| --------------|-------------------|
| `vagrant up --provision` | Create the working VM  (Do it in vagrant/minikube/) |
| `docker build --rm -t ic_webapp:1.0` | Build Dockerfile |
| `docker run -d -p 5000:5000 --name registry registry:2` | Create registry docker locally |
| `docker image tag ic_webapp:1.0 localhost:5000/ic_webapp:1.0 && docker push localhost:5000/ic_webapp:1.0` | Tag your registry + Push |