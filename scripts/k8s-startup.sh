docker build -t kuzyacat/fm-environments-auth-api ./fm-environments-auth-api
docker build -t kuzyacat/fm-environments-cron-api ./fm-environments-cron-api
docker build -t kuzyacat/fm-environments-gateway-api ./fm-environments-gateway-api
docker build -t kuzyacat/fm-environments-notifications-api ./fm-environments-notifications-api
docker build -t kuzyacat/fm-environments-settings-api ./fm-environments-settings-api
docker build -t kuzyacat/fm-environments-simulation-api ./fm-environments-simulation-api
docker build -t kuzyacat/fm-environments-teams-players-api ./fm-environments-teams-players-api
docker build -t kuzyacat/fm-environments-tournaments-players-api ./fm-environments-tournaments-players-api
docker build -t kuzyacat/fm-environments-users-api ./fm-environments-users-api

kubectl apply -f deploy/k8s/mongo-config.yaml
kubectl apply -f deploy/k8s/mongo-secret.yaml
kubectl apply -f deploy/k8s/mongo.yaml
kubectl apply -f deploy/k8s/postgres-config.yaml
kubectl apply -f deploy/k8s/postgres-secret.yaml
kubectl apply -f deploy/k8s/postgres.yaml

kubectl apply -f ../fm-environments-auth-api/deploy/k8s/app.yaml
kubectl apply -f ../fm-environments-cron-api/deploy/k8s/app.yaml
kubectl apply -f ../fm-environments-gateway-api/deploy/k8s/app.yaml
kubectl apply -f ../fm-environments-notifications-api/deploy/k8s/app.yaml
kubectl apply -f ../fm-environments-settings-api/deploy/k8s/app.yaml
kubectl apply -f ../fm-environments-simulation-api/deploy/k8s/app.yaml
kubectl apply -f ../fm-environments-teams-players-api/deploy/k8s/app.yaml
kubectl apply -f ../fm-environments-tournaments-matches-api/deploy/k8s/app.yaml
kubectl apply -f ../fm-environments-users-api/deploy/k8s/app.yaml
