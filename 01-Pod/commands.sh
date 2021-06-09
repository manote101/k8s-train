# check your current context
kubectl config get-contexts                  # display list of contexts

# permanently save the namespace for all subsequent kubectl commands in that context.
# replace XX with your number
kubectl create namespace mylabXX    
kubectl config set-context --current --namespace=mylabXX    

# create pod with CLI 
kubectl run mynginx --image=nginx
kubectl get pod -o wide
kubectl describe pod mynginx

# create pod with manifest file (Infrastruct as Code)
kubectl apply -f single-pod.yaml

# check pod IP address
kubectl get pod -o wide


# create second pod with CLI 
kubectl apply -f pod2.yaml

# check pod IP address
kubectl get pod -o wide

# notice that myapp-pod was re-created
kubectl get pod -w
kubectl logs myapp-pod





# when you finish, run cleanup
kubectl delete pod --all
