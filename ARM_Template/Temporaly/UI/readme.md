#
- [Syntax](#syntax)
  - [Button code](#button-code)
  - [Link Code](#link-code)
  - [Result code](#result-code)
  - [Example](#example)
  

# Syntax
## Button code
`<a href="`[**\<LINK>**](#link-code)`"><img src="https://aka.ms/deploytoazurebutton" alt="Deploy to Azure"></a>`

 ## Link Code
`"https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/`**\<Link to Main Template.json>** `/createUIDefinitionUri/`**\<link to Ui Definition Template.json>**`"`

## Result code
`"https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FArm-Template%2Fmain%2Fdraft%2Fui%2FmainTemplate.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FArm-Template%2Fmain%2Fdraft%2Fui%2FcreateUiDefinition.json"`

## Example
<a href="https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FArm-Template%2Fmain%2Fdraft%2Fui%2FmainTemplate.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FArm-Template%2Fmain%2Fdraft%2Fui%2FcreateUiDefinition.json"><img src="https://aka.ms/deploytoazurebutton" alt="Deploy to Azure UI scheme"></a>

