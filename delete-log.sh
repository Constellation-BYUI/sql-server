#!/bin/sh
cluster=${CLOUDSDK_CONTAINER_CLUSTER:-$(gcloud config get-value container/cluster 2> /dev/null)}
region=${CLOUDSDK_COMPUTE_REGION:-$(gcloud config get-value compute/region 2> /dev/null)}
zone=${CLOUDSDK_COMPUTE_ZONE:-$(gcloud config get-value compute/zone 2> /dev/null)}
project=${CLOUDSDK_CORE_PROJECT:-$(gcloud config get-value core/project 2> /dev/null)}
gcloud container clusters get-credentials --project="$project" --zone="$zone" "$cluster"
kubectl exec `kubectl get pod -l app=$1 --template "{{ with index .items 0}}{{ .metadata.name}}{{ end }}"` -- rm -r /var/opt/mssql/log/
