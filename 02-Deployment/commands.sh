# use deployment to deploy Pod
kubectl apply -f deployment.yaml 

# see node where the pod is running
# see IP of each Pod
kubectl get pod
kubectl get pod -o wide
kubectl get pod -w

# Open second terminal and try to delete pod
kubectl delete pod <your-pod-name>

# go back to first terminal, and press Ctrtl-C

# edit deployment.yaml, change replica from 1 to 3
vi deployment.yaml 
kubectl apply -f deployment.yaml    # re-deploy again
kubectl get pod -o wide
