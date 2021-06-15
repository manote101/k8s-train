kubectl apply -f web-deploy.yaml
kubectl apply -f web-service.yaml

kubectl apply -f shopping-config.yaml
kubectl apply -f shopping-deploy.yaml
kubectl apply -f shopping-service.yaml
kubectl apply -f ingress.yaml
