export KUBECONFIG=~/.kube/config:~/Enterprise/kube_stands/tlp-prod.kubeconfig:~/Enterprise/kube_stands/tlp-stg.kubeconfig:~/Enterprise/kube_stands/tlp-qa.kubeconfig
kubectl config view --flatten