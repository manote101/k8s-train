### Headless Service have no virtual IP
```sh
kubectl apply -f myweb-deploy.yaml
kubectl apply -f myweb-service.yaml
```

### see IP address and port of Service
```sh
kubectl get svc
kubectl get pod -o wide
kubectl get endpoints   # kubectl get ep
```
