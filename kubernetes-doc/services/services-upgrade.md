### Db upgrade
To upgrade db edit [db_upgrade.yml](yml/bl-upgrade.yml) change backendless version and import the job to k8s cluster.
Check out the logs of the job to make sure that everything is ok. Then remove the job.

### Services upgrade
Go to rancher and change version for all backendless services to the version that you need and press deploy button.

### Upgrade from version > 6.5.3
We have changed hazelcast cache to infinispan. To upgrade use the following command to create infinispan service:
```
kubectl apply -f infinispan.yaml
```
Also, you need to add label `has-infinispan: "true"` to services, to do that use the following command:
```
kubectl apply -f infinispan-label.yaml
```
[infinispan.yaml](yml/infinispan.yaml)

[infinispan-label.yaml](yml/infinispan-label.yaml)