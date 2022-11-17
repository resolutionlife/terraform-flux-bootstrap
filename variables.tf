variable "cluster_name" {
  type        = string
  description = "Cluster Name"
}

variable "github_token" {
  type        = string
  description = "Github Token"
}

variable "github_owner" {
  type        = string
  description = "GitHub Owner"
}

variable "github_repo" {
  type        = string
  description = "GitHub Repository"
}

variable "branch" {
  type        = string
  description = "GitHub Repository Branch"
  default     = "main"
}

variable "flux_version" {
  type        = string
  description = "Flux Version"
}

variable "create_namespace" {
  type        = bool
  description = "Controls if the 'flux-system' namespace gets created"
  default     = true
}

variable "patches" {
  type        = map(string)
  description = "Flux Patches"
  default     = {}
}

variable "network_policy" {
  type        = bool
  description = "Deny ingress access to the toolkit controllers from other namespaces using network policies. Defaults to true."
  default     = true
}
