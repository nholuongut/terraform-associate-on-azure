# Title: Terraform Multiple Provider Blocks on Azure Cloud

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

# Description: Learn how to use multiple Terraform provider blocks on Azure Cloud
## Multiple Provider Configurations
## Step-01: Introduction
- Understand and Implement Multiple Provider Configurations

## Step-02: How to define multiple provider configuration of same Provider?
- Understand about default provider
- Understand and define multiple provider configurations of same provider
```t
# Provider-1 for EastUS (Default Provider)
provider "azurerm" {
  features {}
}

# Provider-2 for WestUS Region
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false # This will ensure when the Virtual Machine is destroyed, Disk is not deleted, default is true and we can alter it at provider level
    }
  }
  alias = "provider2-westus"
  #client_id = "XXXX"
  #client_secret = "YYY"
  #environment = "german"
  #subscription_id = "JJJJ"
}
```

## Step-03: How to reference the non-default provider configuration in a resource?
```t
# Provider-2: Create a resource group in WestUS region - Uses "provider2-westus" provider
resource "azurerm_resource_group" "myrg2" {
  name = "myrg-2"
  location = "West US"
    #<PROVIDER NAME>.<ALIAS NAME>
  provider = azurerm.provider2-westus
}
```

## Step-04: Execute Terraform Commands
```t
# Initialize Terraform
terraform init

# Validate Terraform Configuration Files
terraform validate

# Generate Terraform Plan
terraform plan

# Create Resources
terraform apply -auto-approve

# Verify the same
1. Verify the Resource Group created in EastUS region
2. Verify the Resource Group created in WestUS region
```

## Step-05: Clean-Up 
```t
# Destroy Terraform Resources
terraform destroy -auto-approve

# Delete Terraform Files
rm -rf .terraform*
rm -rf terraform.tfstate*
```

## References
- [Provider Meta Argument](https://www.terraform.io/docs/configuration/meta-arguments/resource-provider.html)
- [Azure Provider - Argument and Attribute References](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)

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