for chart in charts/k8s-*; do helm template $(basename $chart) $chart --values=tests/test-values.yaml --output-dir tests/output/$(basename $chart); done
helm template knative-service charts/knative-service --values=tests/test-values.yaml --output-dir tests/output/knative-service
helm template postgres-cluster charts/postgres-cluster --values=tests/test-values.yaml --output-dir tests/output/postgres-cluster
helm template pgvector-cluster charts/pgvector-cluster --values=tests/test-values.yaml --output-dir tests/output/pgvector-cluster
helm template redis-cluster charts/redis-cluster --values=tests/test-values.yaml --output-dir tests/output/redis-cluster
helm template rabbitmq-cluster charts/rabbitmq-cluster --values=tests/test-values.yaml --output-dir tests/output/rabbitmq-cluster