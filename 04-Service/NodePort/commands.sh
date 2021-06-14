kubectl apply -f whoami-multi-pods.yaml
kubectl apply -f service.yaml

# notice Service type
kubectl get deploy,svc
kubectl get ep

# find Node that pods is running
kubectl get pod -o wide

# test connect via NodePort
curl http://<node-name>:30007
curl http://<node-ip>:30007

# Discuss
# How do we know which node is running pods?

