package k8s.admission

violation[{"msg": msg}] {
    ns := input.parameters.systemNamespaces[_]
    ns == input.review.namespace
    msg := sprintf("cannot modify resources in the namespace: %v", [input.review.namespace])
}
