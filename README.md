# AWS SSM Parameters Terraform module

## Usage

```hcl
module "iam_account" {
  source = "github.com/olegbuevich/terraform-aws-ssm-parameters"

  name_prefix = "/db/config"
  parameters = [
    {
      name  = "name"
      value = "postgres"
    },
    {
      name  = "subnets"
      value = join(",", ["subnet1", "subnet2"])
      type  = "StringList"
    }
  ]
}
```
