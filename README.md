# P11-Terraform-SQL-Server

This is a terraform code for a VM with Variables
Pass Variable in commandline : terraform plan -var="resource_group_name=ami-abc123" To Auto Approve add flag --auto-approve
To Pass Variable using file : terraform apply -var-file="added-variable.tfvars"

To ignore Terraform Project Files Run: git filter-branch -f --index-filter 'git rm --cached -r --ignore-unmatch .terraform/'
