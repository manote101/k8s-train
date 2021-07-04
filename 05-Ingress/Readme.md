### At this time, NGINX Ingress Controller has already been installed by Helm chart.
Verify that NGINX Ingress Controller is running
```
kubectl get pod -A
```

First, try to deploy Pod, Service & Ingress
```
kubectl apply -f web-deploy.yaml
kubectl apply -f web-service.yaml
kubectl apply -f ingress.yaml

kubectl get service
kubectl get ingress
kubectl describe ingress myweb-ingress
```

Then, suppose that we deploy shopping  web site
```
kubectl apply -f shopping-config.yaml
kubectl apply -f shopping-deploy.yaml
kubectl apply -f shopping-service.yaml

kubectl get deploy,svc
kubectl describe ingress myweb-ingress
```
Test
```
curl hello-world.info
curl hello-world.info/shopping
curl hello-world.info/web
```

### Cleanup
```
./stop.sh
```
