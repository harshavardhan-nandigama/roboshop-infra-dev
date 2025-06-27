module "frontend" {
 
    source = "git::https://github.com/harshavardhan-nandigama/terraform-aws-securitygroup.git?ref=main"
    project = var.project
    environment = var.environment

    sg_name = var.frontend_sg_name
    sg_description = var.frontend_sg_description
    vpc_id = local.vpc_id 
}

module "bastion" {
    source = "git::https://github.com/harshavardhan-nandigama/terraform-aws-securitygroup.git?ref=main"
    project = var.project
    environment = var.environment
    
    sg_name = var.bastion_sg_name
    sg_description = var.bastion_sg_description
    vpc_id = local.vpc_id
}

