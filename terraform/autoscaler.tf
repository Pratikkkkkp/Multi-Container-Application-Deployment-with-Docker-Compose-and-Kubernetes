resource "kubernetes_horizontal_pod_autoscaler_v2" "backend_hpa" {
  metadata {
    name = "backend-hpa"
    namespace = "default"
  }

  spec {
    scale_target_ref {
      api_version = "apps/v1"
      kind        = "Deployment"
      name        = "backend"
    }

    min_replicas = 2
    max_replicas = 5
        }
        }
