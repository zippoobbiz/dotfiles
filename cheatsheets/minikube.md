Minikube

# Basic operations

- `minikube start --driver=virtualbox`               start minikube with virtualbox
- `minikube start --memory=16384 --cpus=4 --kubernetes-version=v1.17.5`
- `minikube status`
- `minikube stop`
- `minikube status`
- `minikube dashboard`
- `minikube ssh`
- `minikube tunnel`         ??

# Set-up from scratch using virtualbox and istio
- `minikube config set driver virtualbox`       set the driver
- `minikube delete`                             delete the existing cluster
- `minikube start --memory=16384 --cpus=4 --kubernetes-version=v1.17.5` Request enough memory and cpu for istio, can use later version of k8s version