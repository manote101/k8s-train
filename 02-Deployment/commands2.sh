# use deployment & service to deploy web application

kubectl apply -f myweb-deploy.yaml
kubectl apply -f myweb-service.yaml
kubectl get deploy,svc myweb
