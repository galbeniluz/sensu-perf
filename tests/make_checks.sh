#!/usr/bin/env bash

for i in {1..25}; do
    cat << EOF > check$i.yml
type: CheckConfig
api_version: core/v2
spec:
  metadata:
    created_by: admin
    name: check`expr $i + 1`
    namespace: default
  check_hooks: null
  command: '!sensu_test_check!'
  env_vars: null
  handlers: []
  high_flap_threshold: 0
  interval: 10
  low_flap_threshold: 0
  output_metric_format: ""
  output_metric_handlers: null
  proxy_entity_name: ""
  publish: true
  round_robin: false
  runtime_assets: null
  stdin: false
  subdue: null
  subscriptions:
  - large_cluster_test_1
  - large_cluster_test_4
  timeout: 0
  ttl: 0
EOF
sensuctl create -f check$i.yml
done
rm -rf *.yml
