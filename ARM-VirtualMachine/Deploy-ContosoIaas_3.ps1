$template = $templatePath + '\' + $templateFile
$password = "C0nts0sP@55"
$securePassword = $password | ConvertTo-SecureString -AsPlainText -Force
$additionalParameters = New-Object -TypeName Hashtable
$additionalParameters['vmPrivateAdminPassword'] = $securePassword
}



### Deploy Resources
{

New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    @additionalParameters `
    -Verbose -Force
}


<#

In the Define Deployment Variables section, replace [resource group location] with southcentralus 
In the Define Deployment Variables section, replace [resource group name] with rg139860
 
additional parameters:
$additionalParameters = New-Object -TypeName Hashtable
$additionalParameters['vmPrivateAdminPassword'] = $securePassword

add:
@additionalParameters `

#>

Add-AzureRmAccount
