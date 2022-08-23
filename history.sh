# before sync argo
kubectl create secret generic db-secret \\n--from-literal=POSTGRES_USER=$BLABLA \\n--from-literal=POSTGRES_PASSWORD=$BLABLA \\n--from-literal=POSTGRES_DB=$BLABLA

# after syncrhonize ( port forwarding )
export POD_NAME=$(kubectl get pods --namespace database-pg -l "app=postgres-jhlee11" -o jsonpath="{.items[0].metadata.name}")
export CONTAINER_PORT=$(kubectl get pod --namespace database-pg $POD_NAME -o jsonpath="{.spec.containers[0].ports[0].containerPort}")