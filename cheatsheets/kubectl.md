Kubectl

# Basic operations

## Config
- `kubectl config set-context $(kubectl config current-context) --namespace=dev`
- `kubectl config view`

## Check
- `kubectl version --client`
- `kubectl cluster-info`
- `kubectl api-resources`
- `kubectl api-versions`

## Get
- `kubectl get replicaset`
- `kubectl get pods - wide`
- `kubectl get pod <pod-name> -o yaml > pod-definition.yaml`        extract def file
- `kubectl get po --all-namespaces`     -A
- `kubectl get po nginx -w`
- `kubectl get po nginx -o jsonpath='{.spec.containers[].image}{"\n"}'` get image
- `kubectl get po nginx -o yaml --export`
- `kubectl get po --show-labels`

## Explain
- `kubectl explain deployment --api-version apps/v1`

## Run
- `kubectl run xxx --image=xxx  --env=var1=val1  --labels=app=v1`
- `kubectl run nginx --image=nginx --restart=Never -n mynamespace`
- `kubectl run --generator=run-pod/v1 nginx --image=nginx`
- `kubectl run --generator=run-pod/v1 nginx --image=nginx --dry-run -o yaml`
- `kubectl run --generator=deployment/v1beta1 nginx --image=nginx`
- `kubectl run --generator=deployment/v1beta1 nginx --image=nginx --dry-run -o yaml`
- `kubectl run --generator=deployment/v1beta1 nginx --image=nginx --dry-run --replicas=4 -o yaml`
- `kubectl run --generator=deployment/v1beta1 nginx --image=nginx --dry-run --replicas=4 -o yaml > nginx-deployment.yaml`
- `kubectl run busybox --image=busybox --restart=Never --dry-run -o yaml --command  -- env > envpod.yaml`
- `kubectl run nginx --image=nginx --restart=Never --port=80`
- `kubectl run busybox --image=busybox --command --restart=Never -it -- env` -it will help in seeing the output or just run it without -it
- `kubectl run busybox --image=busybox --rm -it --restart=Never -- sh`


## Others
- `kubectl describe pod xxx`
- `kubectl delete pod webapp`
- `kubectl edit pod xxx`
- `kubectl create -f xxxx.yml`
- `kubectl explain po.spec`
- `kubectl annotate po nginx1 nginx2 nginx3 description='my description'`

### label
- `kubectl label po nginx1 nginx2 nginx3 app-`
- `kubectl label po nginx{1..3} app-`
- `kubectl label po -lapp app-`


- `kubectl replace -f replicaset-definition.yml`

- `kubectl scale --replicas=6 -f replicaset-definition.yml`
- `kubectl scale --replicas=6 replicaset myapp-replicaset`

## dry-run
- `kubectl run nginx --image=nginx --restart=Never --dry-run -o yaml > pod.yaml`

## Create
- `kubectl create namespace mynamespace`
- `kubectl create -f pod.yaml -n mynamespace`
- `kubectl create namespace myns -o yaml --dry-run`
- `kubectl create quota myrq --hard=cpu=1,memory=1G,pods=2 --dry-run -o yaml`

## Set
- `kubectl set image pod/nginx nginx=nginx:1.7.1`


## logs
- `kubectl logs nginx -p`  get the logs from previous instance

## exec
- `kubectl exec -it nginx -- /bin/sh`


## Multi-container Pods
- `kubectl run busybox --image=busybox --restart=Never -o yaml --dry-run -- /bin/sh -c 'echo hello;sleep 3600' > pod.yaml`

## Parameters

- `--dry-run -o yaml`
- `--export`

## jsonpath
- `{.spec.containers[].image}{"\n"}`    image
- `{.status.podIP}`                     IP

## help tool
- `kubectl api-resources`
- `kubectl api-resources --namespaced=true`         All namespaced resources
- `kubectl api-resources --namespaced=false`        All non-namespaced resources
- `kubectl api-resources -o name `                  All resources with simple output (just the resource name)
- `kubectl api-resources -o wide `                  All resources with expanded (aka "wide") output
- `kubectl api-resources --verbs=list,get  `        All resources that support the "list" and "get" request verbs
- `kubectl api-resources --api-group=extensions`    All resources in the "extensions" API group

## context
- `kubectl config set-context --current --namespace=<your-namespace>`  set default namespace
- `config view --minify`

## Debug
- `k get all --all-namespaces`
- `k get all --all-namespaces | grep <key-words>`

### port-forward
- `k port-forward <pod-id> 8080:8080`