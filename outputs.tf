output "parameter_arns" {
  value = aws_ssm_parameter.this[*].arn
}
