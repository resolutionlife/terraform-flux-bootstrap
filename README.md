# Flux Boostrap Terraform module

Terraform module to bootstrap Flux with GitHub.

## Usage

```hcl
module "flux" {
  source = "resolutionlife/bootstrap/flux"
  version = "~> 0.1.0

  cluster_name     = "my-cluster"
  github_owner     = "my-org"
  github_repo      = "my-repo"
  github_token     = "<GITHUB TOKEN>"
  flux_version     = "v0.36"
  create_namespace = false
  network_policy   = true
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_flux"></a> [flux](#requirement\_flux) | ~> 0.20 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | ~> 1.15 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_flux"></a> [flux](#provider\_flux) | ~> 0.20 |
| <a name="provider_github"></a> [github](#provider\_github) | ~> 5.0 |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | ~> 1.15 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | ~> 2.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_repository_deploy_key.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_deploy_key) | resource |
| [github_repository_file.install](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_file.kustomize](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_file.patches](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_file.sync](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [kubectl_manifest.install](https://registry.terraform.io/providers/geNAZt/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.sync](https://registry.terraform.io/providers/geNAZt/kubectl/latest/docs/resources/manifest) | resource |
| [kubernetes_namespace.flux_system](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_secret.main](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [tls_private_key.main](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [flux_install.main](https://registry.terraform.io/providers/fluxcd/flux/latest/docs/data-sources/install) | data source |
| [flux_sync.main](https://registry.terraform.io/providers/fluxcd/flux/latest/docs/data-sources/sync) | data source |
| [github_repository.main](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/repository) | data source |
| [kubectl_file_documents.install](https://registry.terraform.io/providers/geNAZt/kubectl/latest/docs/data-sources/file_documents) | data source |
| [kubectl_file_documents.sync](https://registry.terraform.io/providers/geNAZt/kubectl/latest/docs/data-sources/file_documents) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branch"></a> [branch](#input\_branch) | GitHub Repository Branch | `string` | `"main"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster Name | `string` | n/a | yes |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Controls if the 'flux-system' namespace gets created | `bool` | `true` | no |
| <a name="input_flux_version"></a> [flux\_version](#input\_flux\_version) | Flux Version | `string` | n/a | yes |
| <a name="input_github_owner"></a> [github\_owner](#input\_github\_owner) | GitHub Owner | `string` | n/a | yes |
| <a name="input_github_repo"></a> [github\_repo](#input\_github\_repo) | GitHub Repository | `string` | n/a | yes |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | Github Token | `string` | n/a | yes |
| <a name="input_network_policy"></a> [network\_policy](#input\_network\_policy) | Deny ingress access to the toolkit controllers from other namespaces using network policies. Defaults to true. | `bool` | `true` | no |
| <a name="input_patches"></a> [patches](#input\_patches) | Flux Patches | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
