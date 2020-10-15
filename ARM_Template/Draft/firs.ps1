Clear-Host
$tenat = "f447d363-0a98-4b77-9742-580636496cc6"
$subscription = "5376dbd2-b322-46b1-935f-1b76fab2261a"

$connectionContext = Get-AzContext | select Subscription, Tenant
if ($connectionContext.Tenant -like $tenat -and $connectionContext.Subscription -like $subscription  ) {
    Write-Output "Conected to manica"    
}
else {
    Write-Output "WARINIG OTHER THEN MANICA"
}

#create resource group
New-AzResourceGroup `
    -Name myResourceGroup `
    -Location "Central US"

    
$templateFile = "C:\Users\cmajd\Documents\Visual code\Projects\Azure\ARM Template\azuredeploy.json"
New-AzResourceGroupDeployment `
    -Name blanktemplate `
    -ResourceGroupName myResourceGroup `
    -TemplateFile $templateFile


Get-AzRoleDefinition "Contributor"

