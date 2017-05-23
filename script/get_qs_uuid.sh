#!/bin/bash

IGNORE="
invoker
keepalived
tiny
container_druid_celery
chen
lightkeeper
"


GET_LIST="
container_architect
container_darchrow
container_ddserver
container_druid_api
container_druid_celery_worker
container_druid_clean
container_enigma
container_furion
container_heimdall
container_jakiro
container_lanaya
container_load_balance
container_lucifer
container_medusa
container_minio
container_mirana2
container_observer
container_opentsdb
container_oracle
container_postgres
container_rabbitmq
container_razzil
container_riki
container_sven_api
container_sven_worker
container_thrall
container_tiny_proxy
container_tresdin
container_windranger
container_wukong
dbpool
faact
fala_beater
fala_worker
lycan
rubick
weaver
"

for i in ${GET_LIST}
do
  echo --------- $i -------------
  UUID=`qs resource ls | grep $i | awk -F\| '{print $3}'`
  echo $UUID
  echo "qs update -f /global/${i}.cfg $UUID"
done
