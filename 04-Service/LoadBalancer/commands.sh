# use deployment & service to deploy web application
# this will be called Main terminal

kubectl apply -f myweb-deploy.yaml
kubectl apply -f myweb-service.yaml
kubectl apply -f jumpbox.yaml
kubectl get deploy,svc 

# see pod
kubectl get pod
kubectl get endpoints
kubectl get ep

# open 3 terminals, each one run command to monitor each pod
kubectl logs <pod-name-1> -f      # run on terminal #1
kubectl logs <pod-name-2> -f      # run on terminal #2
kubectl logs <pod-name-3> -f      # run on terminal #3

# go back to main terminal, use jumpbox to curl to connect to ip of Service
kubectl exec jumpbox -- curl <ip-address-of-service>
