# check your current context
kubectl config get-contexts                  # display list of contexts

# Now, we will create our own namespace for the lab, for example, I create "mylab"
kubectl create namespace <your-namespace>


# permanently save the namespace for all subsequent kubectl commands in that context.
# kubectl config set-context --current --namespace=mylab

# For this lab, we will create objects in each owned namespace.
# use alias command to substitue 'k' with 'kubectl -n mylab'
alias k='kubectl -n <your-namespace>'

# example, 'k get pod' = 'kubectl -n mylab get pod'


# create pod with CLI 
kubectl run mynginx --image=nginx
kubectl get pod -o wide
kubectl describe pod mynginx

# create pod with manifest file (Infrastruct as Code)
kubectl apply -f pod-single.yaml

# check pod IP address
kubectl get pod -o wide


# create second pod with CLI 
kubectl apply -f pod-exam.yaml

# check pod IP address
kubectl get pod -o wide

# notice that myapp-pod was re-created
kubectl get pod -w
kubectl logs myapp-pod





# when you finish, run cleanup
kubectl delete pod --all
