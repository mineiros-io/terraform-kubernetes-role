resource "kubernetes_role" "role" {
  count = var.module_enabled ? 1 : 0

  depends_on = [var.module_depends_on]

  metadata {
    annotations = var.annotations
    labels      = var.labels
    name        = var.name
    namespace   = var.namespace
  }

  dynamic "rule" {
    for_each = var.rules

    content {
      api_groups     = rule.value.api_groups
      resources      = rule.value.resources
      resource_names = try(rule.value.resource_names, null)
      verbs          = rule.value.verbs
    }
  }
}
