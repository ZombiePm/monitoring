run powershell
#get grafana password
kubectl get secret kube-prometheus-stack-grafana -n monitoring -o jsonpath='{.data.admin-password}' | % {[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($_))}
kubectl get secret kube-prometheus-stack-grafana -n monitoring -o jsonpath="{.data.admin-password}" | base64 -d

kubectl port-forward svc/kube-prometheus-stack-grafana -n monitoring 3000:80