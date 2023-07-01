## This snippet is from the "Savings Terraform Plan To File" video.

### plan-file.tf
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}


resource "aws_iam_user" "lb" {
   name = "iamuser.${count.index}"
   count = 3
   path = "/system"
}

output "iam_names" {
  value = aws_iam_user.lb[*].name
}

output "iam_arn" {
  value = aws_iam_user.lb[*].arn
}
```
### Commands Used:
```sh
terraform plan -out=demopath
terraform apply demopath
```
