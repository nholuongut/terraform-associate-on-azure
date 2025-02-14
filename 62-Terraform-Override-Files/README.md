# Title: Terraform Override Files

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn about Terraform Override Files
## Step-01: Introduction
- [Terraform Override Files](https://www.terraform.io/docs/language/files/override.html)
- Understand and Implement about Override File Formats
1. override.tf
2. somefilename_override.tf

## Step-02: Review Terraform Configs in terraform-manifests-v1
- c1-versions.tf
- c2-variables.tf
- c3-resource-group.tf
- c4-virtual-network.tf
- terraform.tfvars

## Step-03: terraform-manifests-v1 - override.tf
- Define the same Resource Group resource with different `location`
```t
# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  #name = var.resource_group_name
  name = "${var.business_unit}-${var.environment}-${var.resoure_group_name}"
  location = "westus"
}
```

## Step-04: terraform-manifests-v1 - Execute Terraform Commands
```t
# Change Directory
cd terraform-manifests-v1/

# Terraform Initialize
terraform init

# Terraform Validate
terraform validate

# Terraform Plan
terraform plan

# Observation
1. Review the location for all resources.
2. Location of all resources should be "westus" because it has picked the information from "override.tf"

# Clean-Up
rm -rf .terraform*
```

## Step-05: terraform-manifests-v2 - c3-resource-group_override.tf
```t
# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  #name = var.resource_group_name
  name = "${var.business_unit}-${var.environment}-${var.resoure_group_name}"
  location = "westus"
}
```

## Step-06: terraform-manifests-v2 - Execute Terraform Commands
```t
# Change Directory
cd terraform-manifests-v2/

# Terraform Initialize
terraform init

# Terraform Validate
terraform validate

# Terraform Plan
terraform plan

# Observation
1. Review the location for all resources.
2. Location of all resources should be "westus" because it has picked the information from "c3-resource-group_override.tf"

# Clean-Up
rm -rf .terraform*
```

## Step-07: Discuss about .gitignore Terraform - Default behavior
- By default if we use `.gitignore` of Terraform from github it will have `override files` ignored.
- Based on need, you need to comment them in `.gitignore` if those are required and our `.tf` files are checked-in to github.
```t
# Ignore override files as they are usually used to override resources locally and so
# are not checked in
#override.tf
#override.tf.json
#*_override.tf
#*_override.tf.json
```

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