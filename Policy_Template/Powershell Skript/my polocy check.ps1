
Clear-Host
$ResoursGroupList = Get-AzResourceGroup

# policyDefinition Otestovane\01_vyzadovan_tag_na_RG.json
$policy_01 = $ResoursGroupList | Where-Object { $_.Tags.Keys -eq "environment" }


# policyDefinition Otestovane\01_vyzadovan_tag_na_RG.json
$policy_02 = $ResoursGroupList | Where-Object { $_.Tags.Keys -eq "country" -and $_.Tags.Values -eq "cz" }


# policyDefinition Otestovane\01_vyzadovan_tag_na_RG.json
$policy_03 = $ResoursGroupList | Where-Object { $_.Tags.Keys -eq "enviroment" -and $_.Tags.Values -like "prd-*" }

# policyDefinition Onazev resourgrupy musi zacinat rg-
$policy_04 = $ResoursGroupList | Where-Object { $_.ResourceGroupName -like "rg-*" }

# policyDefinition Onazev resourgrupy musi zacinat rg-
$policy_05 = $ResoursGroupList | Where-Object { $_.ResourceGroupName -like "rg-??-???????" }

$ResultOfPolicy = @{
    Policy01 = $policy_01.ResourceGroupName
    Policy02 = $policy_02.ResourceGroupName
    Policy03 = $policy_03.ResourceGroupName
    Policy04 = $policy_04.ResourceGroupName
    Policy05 = $policy_05.ResourceGroupName
    
}

$objects = $ResultOfPolicy.GetEnumerator() | ForEach-Object {
    $PolicyName = $_.Name
    $PolicyValue = $_.Value
    $props = @{
        "Policy Name" = $PolicyName
        "RG Name"     = $PolicyValue
    }

    $props.Count = $PolicyValue.count
    New-Object -TypeName psobject -Property $props
  
} | Select-Object "Policy Name", "RG Name" , Count

$objects
$ResoursGroupList.Count

$ResoursGroupList | ForEach-Object { Start-AzPolicyComplianceScan -ResourceGroupName $_.ResourceGroupName }
Start-AzPolicyComplianceScan -ResourceGroupName "rg-cmajda-resources"
Write-Output "-------------Done--------------"

 
<# $ResoursGroupList | Where-Object { $_.ResourceGroupName -like "rg-cz-abcd###" }


$001=Get-AzResourceProvider | where {$_.ProviderNamespace -like "Microsoft.Resources"}
$001.ResourceTypes | Where-Object {$_.ResourceTypeName -like "*resourcegroups*"} 
#>

$ResoursGroupList | ForEach-Object { Start-AzPolicyComplianceScan -ResourceGroupName $_.ResourceGroupName -AsJob }