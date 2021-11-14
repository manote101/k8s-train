### At this time, NGINX Ingress Controller has already been installed by Helm chart.
Verify that NGINX Ingress Controller is running
```ShellSession
kubectl get pod -A


# First, try to deploy Pod, Service & Ingress

kubectl apply -f web-deploy.yaml
kubectl apply -f web-service.yaml
kubectl apply -f ingress.yaml

kubectl get service
kubectl get ingress
kubectl describe ingress myweb-ingress

# Then, deploy shopping service
kubectl apply -f shopping-config.yaml
kubectl apply -f shopping-deploy.yaml
kubectl apply -f shopping-service.yaml

# deploy echo-service service
kubectl apply -f echo-server.yaml

kubectl get deploy,svc
kubectl describe ingress myweb-ingress

# Test
curl hello-world.info
curl hello-world.info/shopping
curl hello-world.info/web
curl hello-world.info/echo

# Cleanup
./stop.sh
```
