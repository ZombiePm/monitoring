@echo off
kubectl apply -f argocd-alertmanager.yaml -n argocd
kubectl apply -f argocd-kube-prometheus-stack.yaml -n argocd
kubectl apply -f argocd-loki.yaml -n argocd
kubectl apply -f argocd-prometheus-operator-crds.yaml -n argocd