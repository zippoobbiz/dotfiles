
kubectl run xxx --image=xxx
kubectl get pods - wide
kubectl describe pod xxx
kubectl delete pod webapp
kubectl edit pod xxx

extract def file
kubectl get pod <pod-name> -o yaml > pod-definition.yaml

kubectl create -f xxxx.yml
kubectl get replicaset

kubectl replace -f replicaset-definition.yml

kubectl scale --replicas=6 -f replicaset-definition.yml

kubectl scale --replicas=6 replicaset myapp-replicaset

kubectl run --generator=run-pod/v1 nginx --image=nginx

kubectl run --generator=run-pod/v1 nginx --image=nginx --dry-run -o yaml

kubectl run --generator=deployment/v1beta1 nginx --image=nginx

kubectl run --generator=deployment/v1beta1 nginx --image=nginx --dry-run -o yaml

kubectl run --generator=deployment/v1beta1 nginx --image=nginx --dry-run --replicas=4 -o yaml

kubectl run --generator=deployment/v1beta1 nginx --image=nginx --dry-run --replicas=4 -o yaml > nginx-deployment.yaml


kubectl config set-context $(kubectl config current-context) --namespace=dev

kubectl config view