# Title: Terraform Input Variables using -var-file Argument

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn Terraform Input Variables using -var-file Argument
## Step-01: Introduction
- Provide Input Variables using `<any-name>.tfvars` file with CLI 
argument `-var-file`

## Step-02: Assign Input Variables with -var-file argument
- If we plan to use different names for  `.tfvars` files, then we need to explicitly provide the argument `-var-file` during the `terraform plan or apply`
- We will use following things in this example
- **terraform.tfvars:** All other common variables will be picked from this file and environment specific files will be picked from specific `env.tfvars` files
- **dev.tfvars:** `environment` and `resoure_group_location` variable will be picked from this file
- **qa.tfvars:** `environment` and `resoure_group_location` variable will be picked from this file
### terraform.tfvars
```t
business_unit = "it"
resoure_group_name = "rg-tfvars"
virtual_network_name = "vnet-tfvars"
subnet_name = "subnet-tfvars"
```
### dev.tfvars
```t
environment = "dev"
resoure_group_location = "eastus2"
```
### qa.tfvars
```t
environment = "qa"
resoure_group_location = "eastus"
```

## Step-03: Execute Terraform Commands
```t
# Initialize Terraform
terraform init

# Validate Terraform configuration files
terraform validate

# Format Terraform configuration files
terraform fmt

# Review the terraform plan
terraform plan -var-file="dev.tfvars"
terraform plan -var-file="qa.tfvars"

# Terraform Apply - Dev Environment
terraform apply -var-file="dev.tfvars"

# Terraform Apply - QA Environment
terraform apply -var-file="qa.tfvars" # DONT DO THIS FROM SAME WORKING DIRECTORY AS OF NOW
Observation
1. When we run the above command with "qa.tfvars" it will try to replace current dev resources with qa which is not right fundamentally. This is due to Resources Local Name reference is same for both Dev and QA. 
2. Later when we learn Terraform Workspaces concept we can create multiple environments in same working directory under different workspaces. 
3. As of now we didn't reach that state of learning. 
4. In next sections of the Demos we will learn. 
```

## Step-04: Destroy Resources
```t
# Destroy Resources
terraform destroy -auto-approve

# Delete Files
rm -rf .terraform*
rm -rf terraform.tfstate*
```

## References
- [Terraform Input Variables](https://www.terraform.io/docs/language/values/variables.html)

![](https://i.i/Users/nholu/Documents/Donate.png/Users/nholu/Documents/Donate.pngmgur.com/waxVImv.png)
# 🚀 I'm are always open to your feedback.  Please contact as bellow information:
### [Contact Me]
* [Name: Nho Luong]
* [Skype](luongutnho_skype)
* [Github](https://github.com/nholuongut/)
* [Linkedin](https://www.linkedin.com/in/nholuong/)
* [Email Address](luongutnho@hotmail.com)
* [PayPal.me](https://www.paypal.com/paypalme/nholuongut)

![](https://i.imgur.com/waxVImv.png)
![](Donate.png)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/nholuong)

# License
* Nho Luong (c). All Rights Reserved.🌟


