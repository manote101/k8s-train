```ShellSession
kubectl apply -f pod-with-env.yaml
kubectl exec envar-demo -- printenv

kubectl apply -f pod-with-env2.yaml
kubectl logs print-greeting
kubectl get pod -f
```
