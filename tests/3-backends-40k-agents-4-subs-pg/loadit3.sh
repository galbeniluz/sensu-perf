#!/usr/bin/env bash

/root/go/bin/loadit -backends ws://sensugo-backend-stg.sensugo.fog-stg.taboolasyndication.com:8081 \
-subscriptions large_cluster_test_3,general_server \
-user "agent" \
-password "P@ssw0rd!" \
-count 1000 \
-keepalive-interval 60 \
-keepalive-timeout 360 \
-pprof-port 6062 \
-prom "" \
-base-entity-name "loadit-3-agent"
