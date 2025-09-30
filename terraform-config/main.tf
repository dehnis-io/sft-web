terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "~> 0.3"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

# provider "minikube" {
#   kubernetes_version = "1.3.0"
# }

resource "minikube_cluster" "minikube_docker" {
  driver       = "docker"
  cluster_name = "softcraft-web-cluster"
  addons       = [
    "default-storageclass",
    "storage-provisioner"
  ]
  cpus         = 2
  memory       = 2048
}
