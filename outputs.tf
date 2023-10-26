output "parameter_arns" {
  value = [for k, v in aws_ssm_parameter.this : v.arn]
}
