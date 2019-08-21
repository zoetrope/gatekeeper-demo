package k8s.test_admission

import data.k8s.admission

test_deny {
    input1 := {
        "review": {
            "namespace": "kube-system"
        },
        "parameters": {
            "systemNamespaces": [
                "kube-system",
                "kube-public"
            ]
        }
    }

    count(admission.violation) > 0 with input as input1
}

test_allow {
    input2 := {
        "review": {
            "namespace": "default"
        },
        "parameters": {
            "systemNamespaces": [
                "kube-system",
                "kube-public"
            ]
        }
    }

    count(admission.violation) == 0 with input as input2
}
