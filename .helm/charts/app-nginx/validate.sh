#helm dependency update
#helm dependency build
#helm upgrade --install --wait --debug -f ci/test.yaml app .
helm template --debug -f ci/default-values.yaml .
