### This page will show internal load balancer from Server to three of Pods

```sh
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get svc
```

### We will deploy new Pod called jumbox which will be use to test internal load-balancer
```sh
kubectl apply -f jumpbox.yaml

kubect exec jumpbox -- curl <ip-address-of-jumpbox>
```
