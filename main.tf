locals {
  parameters = { for item in var.parameters : item.name => item }
}

resource "aws_ssm_parameter" "this" {
  for_each = local.parameters

  name        = join("/", [var.name_prefix, each.value.name])
  description = try(each.value.description, null)
  value       = each.value.value
  type        = try(each.value.type, "String")
}
