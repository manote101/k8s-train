### NodePort demo
````
kubectl apply -f whoami-multi-pods.yaml
kubectl apply -f service.yaml
````
#### notice Service type
```
kubectl get deploy,svc
kubectl get ep
```
#### find Node that pods is running
``` 
kubectl get pod -o wide
```
##### test connect via NodePort
```
curl http://<node-name>:30007
curl http://<node-ip>:30007
```
#### Wait..., It is a discussion time
#### Let say we have multiple Nodes in the cluster. How do we know which Node is running pods?


#### Clean up
```
kubectl delete -f whoami-multi-pods.yaml
kubectl delete -f service.yaml
```
