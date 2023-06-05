curl -L -O https://github.com/kubesphere/ks-installer/releases/download/v3.3.1/cluster-configuration.yaml
curl -L -O https://github.com/kubesphere/ks-installer/releases/download/v3.3.1/kubesphere-installer.yaml

kubectl apply -f kubesphere-installer.yaml
kubectl apply -f cluster-configuration.yaml

# kubectl delete -f kubesphere-installer.yaml
# kubectl delete -f cluster-configuration.yaml


curl -L -O https://raw.githubusercontent.com/kubesphere/ks-installer/release-3.1/scripts/kubesphere-delete.sh
chmod +x kubesphere-delete.sh
# ./kubesphere-delete.sh
