Get-AzResourceGroup | ForEach-Object { Start-AzPolicyComplianceScan -ResourceGroupName $_.ResourceGroupName }

(Get-AzResourceGroup).count
Set-AzPolicyDefinition
$custom = (Get-AzPolicyDefinition).Properties | where { $_.PolicyType -like "*custom*" }
$definition = Get-AzPolicyDefinition | where { $_.Properties.PolicyType -like "*custom*" -and $_.Properties.DisplayName -like "02 Require a tag and its value on resource groups" }
($definition.Properties.policyrule.then.effect)
$t | add-member

Write-Host "cmajda"
# ahoj jak se máš nid fdkf

