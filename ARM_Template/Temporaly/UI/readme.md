#
- [Syntax](#syntax)
  - [Button code](#button-code)
  - [Link Code](#link-code)
  - [Link to encode/decode url](#link-to-encodedecode-url)
  - [Encode url](#encode-url)
  - [Result code](#result-code)
  - [My Example](#my-example)
- [Microsoft examples](#microsoft-examples)
  

# Syntax
## Button code
`<a href="`[**\<LINK>**](#link-code)`"><img src="https://aka.ms/deploytoazurebutton" alt="Deploy to Azure"></a>`

 ## Link Code
`"https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/`**\<Link to Main Template.json>** `/createUIDefinitionUri/`**\<link to Ui Definition Template.json>**`"`

## Link to encode/decode url
## [Encode url](https://www.url-encode-decode.com/) 

## Result code
`"https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FArm-Template%2Fmain%2Fdraft%2Fui%2FmainTemplate.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FArm-Template%2Fmain%2Fdraft%2Fui%2FcreateUiDefinition.json"`

## My Example
- ### 01 create vm
<a href="https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FArm-Template%2Fmain%2Fdraft%2Fui%2FmainTemplate.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FArm-Template%2Fmain%2Fdraft%2Fui%2FcreateUiDefinition.json"><img src="https://aka.ms/deploytoazurebutton" alt="Deploy to Azure UI scheme"></a>

- ### 02 exist vlan

<a href="https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FArm-Template%2Fmain%2Fdraft%2Fui%2FVirtualNetwork%2Fmaintemplate.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FArm-Template%2Fmain%2Fdraft%2Fui%2FVirtualNetwork%2FcreateUiDefinition.json"><img src="https://aka.ms/deploytoazurebutton" alt="Deploy to Azure"></a>

- ### 03 Resource Group with storage account and key vault
  - #### 03.1 WithOut UI
  [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FAzure%2Fmaster%2FARM_Template%2FTemporaly%2FUI%2FMy%2520samples%2FResource%2520group%2FRG%2520with%2520resources%2FmainTemplate.json)

  - #### 03.2 With UI
  [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FAzure%2Fmaster%2FARM_Template%2FTemporaly%2FUI%2FMy%2520samples%2FResource%2520group%2FRG%2520with%2520resources%2FmainTemplate.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FAzure%2Fmaster%2FARM_Template%2FTemporaly%2FUI%2FMy%2520samples%2FResource%2520group%2FRG%2520with%2520resources%2FcreteUiDefinitions.json)


 
# Microsoft examples
<a href="https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-managedapp-samples%2Fmaster%2FManaged%2520Application%2520Sample%2520Packages%2F201-managed-app-using-existing-vnet%2FmainTemplate.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-managedapp-samples%2Fmaster%2FManaged%2520Application%2520Sample%2520Packages%2F201-managed-app-using-existing-vnet%2FcreateUiDefinition.json"><img src="https://aka.ms/deploytoazurebutton" alt="Deploy to Azure"></a>

