for chart in even/deeper/charts/k8s-*; do helm lint $chart $chart --values=tests/test-values.yaml; done;
helm lint even/deeper/charts/knative-service --values=tests/test-values.yaml
helm lint even/deeper/charts/postgres-cluster --values=tests/test-values.yaml
helm lint even/deeper/charts/pgvector-cluster --values=tests/test-values.yaml
helm lint even/deeper/charts/redis-cluster --values=tests/test-values.yaml
helm lint even/deeper/charts/rabbitmq-cluster --values=tests/test-values.yaml