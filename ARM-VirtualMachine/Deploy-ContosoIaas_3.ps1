### Define Deployment Variables
{
$location = '[resource group location]'
$resourceGroupName = '[resource group name]'
$resourceDeploymentName = 'contoso-iaas-deployment'
$templatePath = $env:SystemDrive + '\Users\LabUser\Documents\HOL_Lab_Files\3_Deploying_Virtual_Machines'
$templateFile = 'contosoIaaS_3.json'
$template = $templatePath + '\' + $templateFile
$password = "C0nts0sP@55"
$securePassword = $password | ConvertTo-SecureString -AsPlainText -Force
}

### Deploy Resources
{

New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
}