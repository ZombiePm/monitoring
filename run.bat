@echo off
REM Alertmanager removed - using kube-prometheus-stack integrated version
kubectl apply -f argocd-kube-prometheus-stack.yaml -n argocd
kubectl apply -f argocd-loki.yaml -n argocd
kubectl apply -f argocd-prometheus-operator-crds.yaml -n argocd