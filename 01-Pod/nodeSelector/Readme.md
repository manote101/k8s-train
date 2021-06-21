## nodeSelector
### How to label nodes 

```sh
# kubectl label nodes <node-name> <label-key>=<label-value>
kubectl label nodes <node-name> disktype=ssd
```

``` 
kubectl apply -f pod-nginx2.yaml
```
Pod will be created on specific node as defined by nodeSelector
```
kubectl get node --show-labels
kubectl get pod -o wide
```
