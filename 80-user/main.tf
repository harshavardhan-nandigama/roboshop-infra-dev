module "user" {
    source = "git::https://github.com/harshavardhan-nandigama/terraform-aws-roboshop.git?ref=main"
    component = "user"
    rule_priority = 20
}