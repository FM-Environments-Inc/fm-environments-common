kubectl delete -f deploy/k8s/mongo-config.yaml
kubectl delete -f deploy/k8s/mongo-secret.yaml
kubectl delete -f deploy/k8s/mongo.yaml
kubectl delete -f deploy/k8s/postgres-config.yaml
kubectl delete -f deploy/k8s/postgres-secret.yaml
kubectl delete -f deploy/k8s/postgres.yaml

kubectl delete -f ../fm-environments-auth-api/deploy/k8s/app.yaml
kubectl delete -f ../fm-environments-cron-api/deploy/k8s/app.yaml
kubectl delete -f ../fm-environments-gateway-api/deploy/k8s/app.yaml
kubectl delete -f ../fm-environments-notifications-api/deploy/k8s/app.yaml
kubectl delete -f ../fm-environments-settings-api/deploy/k8s/app.yaml
kubectl delete -f ../fm-environments-simulation-api/deploy/k8s/app.yaml
kubectl delete -f ../fm-environments-teams-players-api/deploy/k8s/app.yaml
kubectl delete -f ../fm-environments-tournaments-matches-api/deploy/k8s/app.yaml
kubectl delete -f ../fm-environments-users-api/deploy/k8s/app.yaml
