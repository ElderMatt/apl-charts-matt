for chart in charts/k8s-*; do helm lint $chart $chart --values=tests/test-values.yaml; done;
helm lint charts/knative-service --values=tests/test-values.yaml
helm lint charts/postgres-cluster --values=tests/test-values.yaml
helm lint charts/pgvector-cluster --values=tests/test-values.yaml
helm lint charts/redis-cluster --values=tests/test-values.yaml
helm lint charts/rabbitmq-cluster --values=tests/test-values.yaml