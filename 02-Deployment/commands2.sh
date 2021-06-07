# use deployment & service to deploy web application
# this will be called Main terminal

kubectl apply -f myweb-deploy.yaml
kubectl apply -f myweb-service.yaml
kubectl get deploy,svc myweb

# see pod
kubectl get pod

# open 3 terminals, each one run command to monitor each pod
kubectl logs <pod-name-1> -f      # run on terminal #1
kubectl logs <pod-name-2> -f      # run on terminal #2
kubectl logs <pod-name-3> -f      # run on terminal #3

# on main terminal, run curl 3-4 time and see log status
curl <ip-address-of-service>
