@echo off
kubectl apply -f argocd-kube-prometheus-stack.yaml -n argocd
kubectl apply -f argocd-loki.yaml -n argocd
kubectl apply -f argocd-prometheus-operator-crds.yaml -n argocd
kubectl get secret kube-prometheus-stack-grafana -n monitoring -o jsonpath="{.data.admin-password}" | base64 -d
kubectl port-forward svc/kube-prometheus-stack-grafana -n monitoring 3000:80