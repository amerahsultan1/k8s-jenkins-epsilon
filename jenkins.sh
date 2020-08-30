#!/bin/bash
kubectl create -n jenkins clusterrolebinding jenkins-account --clusterrole=cluster-admin --serviceaccount=jenkins:jenkins
kubectl apply -f jenkins.namespace.yaml -f jenkins.helm.yaml -f ingress.yaml
WAIT=90
echo "Sleeping for $WAIT"
sleep $WAIT
echo "Making progress"
. query.sh
