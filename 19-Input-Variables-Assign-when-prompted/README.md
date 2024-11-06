# Title: Terraform Input Variables Assign when prompted

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn Terraform Input Variables Assign when prompted
## Step-01: Introduction
- Provide Input Variables when prompted during `terraform plan or apply` in CLI

## Step-02: Input Variables Assign When Prompted
- Add a new variable in `c2-variables.tf` named `subnet_name` without any default value. 
- As the variable doesn't have any default value when you execute `terraform plan` or `terraform apply` it will prompt for the variable. 
```t
# 6. Subnet Name: Assign When Prompted using CLI
variable "subnet_name" {
  description = "Virtual Network Subnet Name"
  type = string 
}
```

## Step-03: Update c4-virtual-network.tf Subnet Resource
```t
# Create Subnet
resource "azurerm_subnet" "mysubnet" {
  #name                 = var.subnet_name
  name                 = "${azurerm_virtual_network.myvnet.name}-${var.subnet_name}"
  resource_group_name  = azurerm_resource_group.myrg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
```

## Step-04: Execute Terraform Commands
```t
# Initialize Terraform
terraform init

# Validate Terraform configuration files
terraform validate

# Format Terraform configuration files
terraform fmt

# Review the terraform plan
terraform plan

# Observation
1. Verify Resource Group Name
2. Verify Virtual Network Name
3. Verify Virtual Network Subnet Name
```

## Step-05: Clean-Up
```t
# Delete Files
rm -rf .terraform*
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