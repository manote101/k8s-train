# create pod with sidecar container
kubectl apply -f pod-sidecar.yaml

# check pod IP address
kubectl get pod -o wide
kubectl get pod

# go inside sidecar container
kubectl exec -it my2pods -c sidecar -- sh
kubectl describe pod my2pods

# remember my2pods's IP address

# now we are inside sidecar container and see IP again
ifconfig

# check if nginx is running
telnet localhost 80
  > HELLO


# when you finish, run cleanup
kubectl delete pod -all
