module "git" {
    source = "github.com/CloudTechDevOps/terraform09am/day-2-all.tf-files"
    ami_id = var.ami
    instance_type = var.type
    key_name = "virginia_key"
   
}