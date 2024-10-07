#!/usr/bin/env bash

/root/go/bin/loadit -backends ws://sensugo-backend-stg.sensugo.fog-stg.taboolasyndication.com:8081 \
-subscriptions large_cluster_test_4,general_server \
-count 2000 \
-keepalive-interval 60 \
-keepalive-timeout 360 \
-pprof-port 6063 \
-prom "" \
-base-entity-name "loadit-4-agent"
