data "flux_install" "main" {
  target_path    = local.target_path
  version        = var.flux_version
  network_policy = var.network_policy
}

data "kubectl_file_documents" "install" {
  content = data.flux_install.main.content
}

resource "kubectl_manifest" "install" {
  for_each   = { for v in local.install : lower(join("/", compact([v.data.apiVersion, v.data.kind, lookup(v.data.metadata, "namespace", ""), v.data.metadata.name]))) => v.content }
  depends_on = [kubernetes_namespace.flux_system]
  yaml_body  = each.value
}
