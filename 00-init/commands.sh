# show kubeconfig settins
kubectl config view

# or you can use
cat ~/.kube/config

# create pod by command line, I will explain concept later
kubectl run myapp --image busybox --command -- sh -c "sleep 3600"

# see status of pod which you just created
kubectl get pod
kubectl get pod -o wide
kubectl get pod -o json

# if there are multiple users using the same cluster, try change "myapp" to "myappxxx"


