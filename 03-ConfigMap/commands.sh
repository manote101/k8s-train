# create ConfigMap & Secret

kubectl apply -f config-file.yaml
kubectl get configmap 
kubectl describe cm homepage-file

kubectl apply -f secret.yaml
kubectl get secret 
kubectl describe mysecret-file

# see content of deploy-no-config.yaml
more deploy-no-config.yaml

# firstly, see default nginx page.
kubectl apply -f deploy-no-config.yaml
kubectl get pod
kubect exec <pod-name> -- curl localhost

# this time, we will update index.html using ConfigMap
kubectl apply -f deploy-with-configmap.yaml
kubectl get pod
kubectl exec <pod-name> -- curl localhost
kubectl exec <pod-name> -- ls -l /usr/share/nginx/html
kubectl exec <pod-name> -- cat /usr/share/nginx/html/index.html
# try change something on config-file.yaml, then re-apply again
kubectl apply -f config.file.yaml
# see what you just change
kubectl exec <pod-name> -- curl localhost



# see secret.file which we created with ConfigMap
kubectl exec <pod-name> -- ls /usr/share/nginx/html/secret
kubectl exec <pod-name> -- cat /usr/share/nginx/html/secret/secret.file
