# INFO

Ici les deploiements de toute l'infrastructure se font dans le même répo. Il faudrait en faire un par répo quitte à n'avoir que des manifests dans certains répo.


Pour les `secrets`, il faudrait faire à minima du sealed secret. Aujourd'hui ces secrets sont pour de la démo et sont simples bien qu'ils soient en b64.


**Attention**

Pour les volumes en local sur la machine. Il est préférable de les créer d'abord à la main et de leur donner les bons droits:

```bash
sudo mkdir -p /data_k8s/postgres /data_k8s/lib-odoo /data_k8s/pgadmin4 /data_docker/addons /data_docker/config
sudo chmod 777 /data_k8s/* /data_docker/*
```