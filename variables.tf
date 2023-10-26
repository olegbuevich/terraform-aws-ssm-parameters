variable "name_prefix" {
  type    = string
  default = ""
}

variable "parameters" {
  type    = list(any)
  default = []
}

variable "tags" {
  type        = any
  description = "(optional) tags for resources"
  default     = {}
}
