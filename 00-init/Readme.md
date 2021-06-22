# This is the first part of my Kubernetes training
first of all, clone sample scripts from Manote's GitHub [repo](https://github.com/manote101/k8s-train)
```
git clone https://github.com/manote101/k8s-train.git
```

Show k8s version
```
kubectl version

# show kubeconfig settins
kubectl config view
```

Display namespaces
```sh
kubectl get namespace
kubectl get ns
# or you can use
cat ~/.kube/config
```



Then, we will create simple Pod in default namespace
```
kubectl run myapp --image=nginx

# see status of pod which you just created
kubectl get node 
kubectl get node -o wide
kubectl get pod
kubectl get pod -o wide
kubectl get pod -o json
```

if there are multiple users and sign-in with the same user id, try change "myapp" to "myappxxx"
```
kubectl run myappXX --image=nginx
```

Clean up what you just created
```
kubectl delete pod/myappXX
```
