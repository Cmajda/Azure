# 1. login to Azure
#Connect-AzAccount -tenant "de010149-6b4a-4352-8448-9d70d45477d8"

# 2. Select Subscriction
Select-AzSubscription -Subscription 'Azure subscription 1' | Out-Null
Get-AzSubscription
(Get-AzContext).Tenant.Id


# 3. Create resource group
$nameRG1 = 'Portal'
$nameRG2 = 'Shell'
$nameRG3 = 'Shell_from_templates'

New-AzResourceGroup -Name $nameRG1 -Location 'East US'
New-AzResourceGroup -Name $nameRG2  -Location 'East US'
New-AzResourceGroup -Name $nameRG3  -Location 'East US'

# 4. edit Reource group ($nameRG2) => Add tag
Set-AzResourceGroup -Name $nameRG2 -Tag @{Department = "IT" }

# 4.1 Add tags to a resource group 
$PSVersionTable

$Tags = (Get-AzResourceGroup -Name $nameRG2).Tags
$Tags
$Tags += @{"Status" = "Approved"; "FY2016" = $null }
Set-AzResourceGroup -Name $nameRG2 -Tag $Tags
(Get-AzResourceGroup -Name $nameRG2).Tags

# 4.2 Remove all tags to a resource group
Set-AzResourceGroup -Name $nameRG2 -Tag @{}
(Get-AzResourceGroup -Name $nameRG2).Tags

# 5 Policy

# 5.1 export definition policy
$exportPolicy = Get-AzPolicyAssignment | Select-Object * | Where-Object { $_.Properties.DisplayName -like "*portal*" }
$sources = Get-AzPolicyDefinition -id $exportPolicy.Properties.PolicyDefinitionId
$sources.Properties.Parameters | ConvertTo-Json -Depth 99 | ForEach-Object { [System.Text.RegularExpressions.Regex]::Unescape($_) } | Out-File C:\temp\p.json -Force
$sources.Properties.PolicyRule | ConvertTo-Json -Depth 99 | ForEach-Object { [System.Text.RegularExpressions.Regex]::Unescape($_) } | Out-File C:\temp\pol.json -Force
$sources.Properties.Metadata | ConvertTo-Json -Depth 99 | ForEach-Object { [System.Text.RegularExpressions.Regex]::Unescape($_) } | Out-File C:\temp\met.json -Force
$sources.Properties | ConvertTo-Json -Depth 99 | ForEach-Object { [System.Text.RegularExpressions.Regex]::Unescape($_) } | Out-File C:\temp\all.json -Force

$policyall = @{}
$policyall = (get-content C:\temp\all.json) | ConvertFrom-Json


(az group list | ConvertFrom-Json) | Select-Object name
$policyall.properties.policyRule

# 5.2 new definition policy from json
New-AzPolicyDefinition -Name "TEST0001"  -Description "TEST0001"-Policy $policyall.properties.policyRule -Parameter $policyall.properties.Parameters #-Metadata $policyall.properties.Metadata
New-AzPolicyDefinition -Name "TEST0001"  -Description "TEST0001"-Policy C:\temp\pol.json -Parameter C:\temp\p.json -Metadata C:\temp\met.json

# 5.3 new assigment policy from definition
New-AzPolicyAssignment -Name TEST654 -Scope 

# 5.3 remove assigment policy
$removePolicy = Get-AzPolicyAssignment | Select-Object * | Where-Object { $_.Properties.DisplayName -like "*test*" }
Remove-AzPolicyAssignment -Name $removePolicy.name -Confirm

# 5.4 get definition initiative (ajnešitiv)
$initiativeDefiniction = Get-AzPolicySetDefinition
$initiativeDefiniction.count
$InDef = $initiativeDefiniction | Where-Object { $_.properties.displayName -like "*Audit Windows VMs that do not have the specified applications installed*" }
$definitinInDefinitounSET = $InDef.Properties.PolicyDefinitions
$definitinInDefinitounSET.Count
#for one of list
$definitinInDefinitounSET[0].policyDefinitionReferenceId
(Get-AzPolicyDefinition -Id $definitinInDefinitounSET[0].policyDefinitionId).Properties.DisplayName








Start-AzPolicyComplianceScan -ResourceGroupName $nameRG2    

# 5. Edit Assigment policy =>add Exclusions
$updatePolicy = Get-AzPolicyAssignment | Select-Object * | Where-Object { $_.Properties.DisplayName -like "*portal*" }
$excludedrg1 = Get-AzResourceGroup -Name $nameRG2
$notScope = @($excludedrg1.ResourceId)
Set-AzPolicyAssignment -Id $updatePolicy.ResourceId -NotScope $notScope



(Get-AzPolicyAssignment).Properties | Select-Object DisplayName, Scope, Parameters

Get-AzPolicyAssignment | Select-Object * | Where-Object { $_.Properties.DisplayName -like $nameRG2 }




