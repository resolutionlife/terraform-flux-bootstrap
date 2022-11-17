locals {
  known_hosts = "github.com ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEmKSENjQEezOmxkZMy7opKgwFB9nkt5YRrYMjNuG5N87uRgg6CLrbo5wAdT/y6v0mKV0U2w0WZ2YB/++Tpockg="
  github_url  = "ssh://git@github.com/${var.github_owner}/${var.github_repo}.git"
  target_path = "clusters/${var.cluster_name}"

  install = [for v in data.kubectl_file_documents.install.documents : {
    data : yamldecode(v)
    content : v
  }]

  sync = [for v in data.kubectl_file_documents.sync.documents : {
    data : yamldecode(v)
    content : v
  }]
}
