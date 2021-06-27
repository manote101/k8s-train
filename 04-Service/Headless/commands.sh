kubectl apply -f myweb-deploy.yaml
kubectl apply -f myweb-service.yaml

# see IP address and port 
kubectl get svc
kubectl get pod -o wide
kubectl get endpoints   # kubectl get ep

