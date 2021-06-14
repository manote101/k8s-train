# create pods & service 
kubectl apply -f deployment.yaml
kubectl apply -f service-lb.yaml

# see what we just created
kubectl get deploy,svc 
kubectl get ep

# if you are running in Cloud or having external LB, you will get "EXTERNAL-IP"


# Clean up
kubectl delete -f deployment.yaml
kubectl delete -f service-lb.yaml
