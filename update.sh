#!/bin/bash

curl https://raw.githubusercontent.com/strava-explorer/segments-explorer-api/release/segments-api-deployment.yaml > segments-api-deployment.yaml
curl https://raw.githubusercontent.com/strava-explorer/segments-explorer-ui/master/segments-ui-deployment.yaml > segments-ui-deployment.yaml

kubectl apply -f segments-api-secret.yaml 
kubectl apply -f segments-api-deployment.yaml
kubectl apply -f segments-ui-deployment.yaml

minikube tunnel