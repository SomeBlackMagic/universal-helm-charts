#helm dependency update
#helm dependency build
helm template --debug --dry-run -f ci/default-values.yaml app .
#helm install --debug --dry-run -f ci/default-values.yaml app .
