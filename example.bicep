@minLength(3)
@maxLength(24)
@description('Provide a name for the storage account. Use only lower case letters and numbers. The name must be unique across Azure.')
param riteshdude string = 'riteshdude${uniqueString(resourceGroup().id)}'

param location string = resourceGroup().location


resource Storage 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: riteshdude
  location: location 
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

