# Gatekeeper Demo

## Required
* Docker
    * See [https://docs.docker.com/install/](https://docs.docker.com/install/)
* kubectl
    * See [https://kubernetes.io/docs/tasks/tools/install-kubectl/](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
* kind
    * See [https://kind.sigs.k8s.io/docs/user/quick-start/](https://kind.sigs.k8s.io/docs/user/quick-start/)

## Launch Kubernetes Cluster

```console
$ kind create cluster --name gatekeeper-demo --config cluster.yaml
$ export KUBECONFIG="$(kind get kubeconfig-path --name="gatekeeper-demo")"
```

## Deploy Gatekeeper

```console
$ kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper/master/deploy/gatekeeper.yaml
```

## 
