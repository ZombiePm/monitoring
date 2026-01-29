run powershell
#get grafana password
kubectl get secret kube-prometheus-stack-grafana -n monitoring -o jsonpath='{.data.admin-password}' | % {[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($_))}