# Title: Terraform Input Variables CLI Argument var

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn Terraform Input Variables CLI Argument -var
## Step-01: Introduction
- Override default variable values using CLI argument `-var`
- Also learn about Terraform Plan Generation 

## Step-02: Input Variables Override default value with cli argument `-var`
- We are going to override the default values defined in `c2-variables.tf` by providing new values using the `-var` argument using CLI
```t
# Initialize Terraform
terraform init

# Validate Terraform configuration files
terraform validate

# Format Terraform configuration files
terraform fmt

# Option-1 (Always provide -var for both plan and apply)
# Review the terraform plan
terraform plan -var="resoure_group_name=demorg" -var="resoure_group_location=westus" -var="virtual_network_name=demovnet" -var="subnet_name=demosubnet" 

# Create Resources (optional - We are just learning concept)
terraform apply -var="resoure_group_name=demorg" -var="resoure_group_location=westus" -var="virtual_network_name=demovnet" -var="subnet_name=demosubnet" 
```

## Step-03: Generate Terraform Plan and use that using Terraform Apply
```t
# Option-2 (Generate plan file with -var and use that with apply)
# Generate Terraform plan file
terraform plan -var="resoure_group_name=demorg" -var="resoure_group_location=westus" -var="virtual_network_name=demovnet" -var="subnet_name=demosubnet"  -out v1.plan

# Terraform Show
terraform show v1.plan

# Create / Deploy Terraform Resources using Plan file
terraform apply v1.plan 
```

## Step-04: Clean-Up Files
```t
# Destroy Resources
terraform destroy -auto-approve
Subnet Name: demosubnet (When Prompted)

# Delete Files
rm -rf .terraform*
rm -rf terraform.tfstate*
mv v1.plan v1.plan_bkup
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