# Content
- [Content](#content)
- [What the template does](#what-the-template-does)
- [Naming convention](#naming-convention)
    - [Results](#results)
    - [Example in code as variable](#example-in-code-as-variable)
- [Tags](#tags)
- [Storage account](#storage-account)
- [Key vault](#key-vault)
- [Deploy to Azure](#deploy-to-azure)
# What the template does
Template creates a ```Resource group``` with two resources ```Storage account``` and  ```Key vault```. Also applies lock on a ```Resources group``` if the ```Tag Stage``` equals ```Live```. All resources are located in the same region, including a Resource Group, selected in the ```Location parameter```  
All tags are apply for all resources, including a Resource Group.

-  ### [Storage account](#storage-account)
-  ### [Key vault](#key-vault)
  
# Naming convention  
The naming convention is for all resources and resource group same, except Storage account.  
Syntax:  
```{Resource type}-{Country ISO A2}-{Application name}```  
```{Resource type}{Country ISO A2}{Application name}``` - for storage account  
### Results
```rg-en-TestApplication```  - for Resource group  
```stenarmtemplatelogs```  - for Storage account  
```kv-en-armtemplate```  - for Key vault  
Sources of the naming convention are parameters: ```CountrySITSIO, ApplicationName. {Resource type}``` is hardcoded.
### Example in code as variable
```
"rgName": "[concat('rg-',variables('CountryObject').value[parameters('CountrySITSIO')], '-', parameters('ApplicationName'))]"

"storageName": "[concat('st',variables('CountryObject').value[parameters('CountrySITSIO')], parameters('ApplicationName'), 'logs')]",
```  

# Tags
- Application  
- Country  
- description  
- Stage  
- customer  
- Administrator  
- Deployment  
  
# Storage account
Opportunity to choose  Kind Storage and SKU.   

# Key vault
**Enabled For Deployment:** ```true```  
**Enabled For TemplateDeployment:** ```true```  
**Enabled For DiskEncryption:** ```true```  
**Enable Soft Delete:** Dependents on the value of ```Tag Stage```  

  
# Deploy to Azure

  [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/?feature.customportal=false#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FAzure%2Fmaster%2FARM_Template%2FTemporaly%2FUI%2FMy%2520samples%2FVms%2FmainTemplate.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FCmajda%2FAzure%2Fmaster%2FARM_Template%2FTemporaly%2FUI%2FMy%2520samples%2FVms%2FcreateUiDefinition.json)


