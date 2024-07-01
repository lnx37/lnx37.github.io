#!/bin/bash

set -e
set -o pipefail
set -u
set -x

cd "$(dirname "$0")"

date

rsync -avz ../lnxk8s/addon/calico/README.txt          kubernetes/kubernetes_calico.txt
rsync -avz ../lnxk8s/addon/cilium/README.txt          kubernetes/kubernetes_cilium.txt
rsync -avz ../lnxk8s/addon/coredns/README.txt         kubernetes/kubernetes_coredns.txt
rsync -avz ../lnxk8s/addon/dashboard/README.txt       kubernetes/kubernetes_dashboard.txt
rsync -avz ../lnxk8s/addon/flannel/README.txt         kubernetes/kubernetes_flannel.txt
rsync -avz ../lnxk8s/addon/ingress_kong/README.txt    kubernetes/kubernetes_ingress_kong.txt
rsync -avz ../lnxk8s/addon/ingress_nginx/README.txt   kubernetes/kubernetes_ingress_nginx.txt
rsync -avz ../lnxk8s/addon/ingress_traefik/README.txt kubernetes/kubernetes_ingress_traefik.txt
rsync -avz ../lnxk8s/addon/metallb/README.txt         kubernetes/kubernetes_metallb.txt
rsync -avz ../lnxk8s/addon/metrics_server/README.txt  kubernetes/kubernetes_metrics_server.txt
rsync -avz ../lnxk8s/addon/prometheus/README.txt      kubernetes/kubernetes_prometheus.txt

date
