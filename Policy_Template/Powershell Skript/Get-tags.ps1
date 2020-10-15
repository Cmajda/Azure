Clear-Host
$ResoursGroupList = Get-AzResourceGroup | Where-Object { $_.ResourceGroupName -like "rg-cmajda-resources" } | select *
Get-AzResource -ResourceGroupName "rg-cmajda-resources" | select Name, Tags | ft
#Start-AzPolicyComplianceScan -ResourceGroupName "rg-cmajda-resources"
Write-Output "-------------Done--------------"

Clear-Host
$def = Get-AzPolicyDefinition | Where-Object { $_.PolicyDefinitionId -like "*a9509d53-6f15-4bad-930d-508a85f034b6" }
(Get-AzPolicyDefinition -Name "a9509d53-6f15-4bad-930d-508a85f034b6").Properties.DisplayName
$def.Properties.DisplayName