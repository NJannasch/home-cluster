# home-cluster

Tail

## Master/Control-Plane
Networking rules
https://docs.k3s.io/installation/requirements#networking


```yaml
# /etc/rancher/k3s/config
node-external-ip:
  - "100.95.188.2"
flannel-backend:
  - "wireguard-native"
flannel-external-ip: true
```


## Node/Agent
`sudo ufw allow OpenSSH`

Create yaml before:
```yaml
# /etc/rancher/k3s/config.yaml
token:
  - "K105e1011a56e85dbfffd4bb6f44e69f367881b1376ac5fd26b336c512615ddd6bc::server:ba0f0940bb80a95a60cee664425e7752"
server:
  - "https://100.95.188.2:6443"
node-external-ip:
  - "100.95.188.2"
```
Then install with same version as control panel:
`curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION="v1.24.9-rc1+k3s2" K3S_URL=https://100.95.188.2:6443 K3S_TOKEN="K105e1011a56e85dbfffd4bb6f44e69f367881b1376ac5fd26b336c512615ddd6bc::server:ba0f0940bb80a95a60cee664425e7752" INSTALL_K3S_EXEC="--node-external-ip=100.95.188.2" sh -`


`sudo k3s agent --token $K3S_TOKEN  --server https://$K3S_URL --node-external-ip=100.112.167.2`
`sudo systemctl stop k3s-agent.service`

## Other
- Cheap S3 Storage
https://www.idrive.com/e2/pricing
- Easily access logfiles using https://github.com/stern/stern