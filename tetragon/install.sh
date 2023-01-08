helm repo add cilium https://helm.cilium.io
helm repo update
helm delete tetragon -n kube-system
kubectl rollout status -n kube-system ds/tetragon -w