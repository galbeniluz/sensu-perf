#!/usr/bin/env bash

/root/go/bin/loadit -backends ws://sensugo-backend-stg-0.sensugo-backend-stg.sensugo.fog-stg.taboolasyndication.com:8081,ws://sensugo-backend-stg-1.sensugo-backend-stg.sensugo.fog-stg.taboolasyndication.com:8081,ws://sensugo-backend-stg-2.sensugo-backend-stg.sensugo.fog-stg.taboolasyndication.com:8081 \
-subscriptions large_cluster_test_3 \
-count 2000 \
-keepalive-interval 60 \
-keepalive-timeout 360 \
-pprof-port 6062 \
-prom "" \
-base-entity-name "loadit-3-agent"
