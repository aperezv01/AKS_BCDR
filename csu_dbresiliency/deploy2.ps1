Connect-AzAccount

$adminLogin = "adminuser"
$resourceGroupName = "rgdbresiliencylab"
$location = "eastus"
$databaseName = "dbapp1"
$drLocation = "westus"
$password = "SqlPasswd1234567"
$storageaccountname = "storagecsu"
     
Write-host "Creating Functions and Frontdoor"
Register-AzResourceProvider -ProviderNamespace Microsoft.Cdn
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile ./bicep/functions_fdv2.bicep -failoverGroupName $failoverGroupName -databaseName $databaseName -adminLogin $adminLogin -contra $password
