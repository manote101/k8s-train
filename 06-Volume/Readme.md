[emptDir](https://kubernetes.io/docs/concepts/storage/volumes/#emptydir) is one way to create tmpfs (RAM-backed filesystem) in the Pod.

Note: The data in an emptyDir volume is safe across container crashes.

Some uses for an emptyDir are:
* scratch space, such as for a disk-based merge sort
* checkpointing a long computation for recovery from crashes
* holding files that a content-manager container fetches while a webserver container serves the data
```
kubectl apply -f emptyDir-volume.yaml

# create file under /cache directory
kubectl exec -it test-pd -- sh
```
Now, we ae inside the Pod, go to /cache & create something
```
cd /cache
echo "Hi, it's fun time" > test.txt
ls -l
```

Support that your Pod died from any reason.
```
docker ps | grep nginx

# try to kill Pod
docker stop <container-id>
```

Kubernetes will automatically start new pod, let's check our data.
Tada ..
```
kubectl exec test-pd -- cat /cache/test.txt
```
---
[hostPath](https://kubernetes.io/docs/concepts/storage/volumes/#hostpath) A hostPath volume mounts a file or directory from the host node's filesystem into your Pod.

```
kubectl apply -f hostPath-volume.yaml
kubectl get pod
```
if directory is not already exist. Try change "type" from Directory to DirectoryOrCreate.
