run powershell
#get grafana password
kubectl get secret kube-prometheus-stack-grafana -n monitoring -o jsonpath='{.data.admin-password}' | % {[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($_))}
kubectl get secret kube-prometheus-stack-grafana -n monitoring -o jsonpath="{.data.admin-password}" | base64 -d

kubectl port-forward svc/kube-prometheus-stack-grafana -n monitoring 3000:80
---

## ☕ Support

Если проект оказался полезен:

| Network  | Address |
|----------|---------|
| **SOL**  | `BMvNKNK7zTRc6jQsdyUKFE6wFL6TJMKL1ZSRhW6pCpNJ` |
| **ETH**  | `0x743d66E349270355200b958FC1caC8427a9efe04` |
| **BTC**  | `bc1qset463vqdydrgpxy4m5hvke0cqvtlqztqrqw2v` |
