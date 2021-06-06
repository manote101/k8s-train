# k8s version
kubectl version

# show kubeconfig settins
kubectl config view

# see namespaces
kubectl get namespace
kubectl get ns

# or you can use
cat ~/.kube/config

# Objective: create simple Pod in default namespace
#
# create pod by command line, I will explain concept later
kubectl run myapp --image=nginx

# see status of pod which you just created
kubectl get node 
kubectl get node -o wide
kubectl get pod
kubectl get pod -o wide
kubectl get pod -o json

# if there are multiple users using the same cluster, try change "myapp" to "myappxxx"
kubectl run myappXX --image=nginx

# delete pod
kubectl delete pod/myappXX


