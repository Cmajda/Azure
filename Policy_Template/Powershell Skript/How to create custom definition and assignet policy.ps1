# How to create custom definition and assignet policy
# https://docs.microsoft.com/en-us/azure/governance/policy/tutorials/create-and-manage#create-a-policy-definition-with-powershell

#---------------start sript-----------------
clear-host

#---------------start definition variable-----
$Subscription = Get-AzSubscription -SubscriptionName 'Azure subscription 1'
$NameDefinition = "Audit_Require_a_tag_on_resource_groups_(Shell)"
$DisplayNameDefinition = "Audit Require a tag on resource groups (Shell)"
$NamePolicy = $NameDefinition
$DisplayNamePolicy = $DisplayNameDefinition
$definition_policy = "C:\temp\def_policy.json"
$definition_parameter = "C:\temp\def_parameters.json"
$definition_metadata = "C:\temp\def_metadata.json"
$Policy_parameters = '
{
    "tagName":  {
                    "value":  "enviroment"
                }
}'


#-------------End definition variable-----

clear-host
# ------------ start creating definition -------------------

New-AzPolicyDefinition -name $NameDefinition -DisplayName $DisplayNameDefinition -Policy $definition_policy  -Parameter $definition_parameter -Metadata $definition_metadata
Remove-AzPolicyDefinition -Name $NameDefinition -Confirm
# ------------ end creating definition -------------------

# ------------ start creating assignment policy -------------------
$PolicyDefinition = Get-AzPolicyDefinition -Name $NameDefinition
New-AzPolicyAssignment -Name $NamePolicy -DisplayName $DisplayNamePolicy -PolicyDefinition $PolicyDefinition -Scope "/subscriptions/$($Subscription.Id)" -PolicyParameter $Policy_parameters 
Remove-AzPolicyAssignment -Name $NameDefinition -Confirm
# ------------ start creating assignment policy -------------------

(Get-AzPolicyDefinition -Name $NameDefinition).Properties.PolicyRule | Select-Object *

#Set-AzPolicyDefinition -Policy 



