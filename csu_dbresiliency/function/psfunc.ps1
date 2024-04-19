Register-AzResourceProvider -ProviderNamespace Microsoft.Cdn
New-AzureRmResourceGroup -Name rgdbresiliency -Location "east us"
New-AzResourceGroupDeployment -ResourceGroupName rgdbresiliency -TemplateFile .\functions_fd.bicep -appInsightsLocation "east us"
