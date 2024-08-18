if [ ! -d charts ]; then
  helm dependency build
fi

#helm plugin install https://github.com/helm-unittest/helm-unittest.git
#helm plugin update unittest
set -exu
helm unittest --debug --update-snapshot --color --strict .
