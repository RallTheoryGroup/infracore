param location string = resourceGroup().location

resource st 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'stinfra${uniqueString(resourceGroup().id)}'
  location: location
  kind: 'StorageV2'
  sku: { name: 'Standard_LRS' }
  properties: {
    supportsHttpsTrafficOnly: true
    minimumTlsVersion: 'TLS1_0'
    allowBlobPublicAccess: false
    publicNetworkAccess: 'Disabled'
    networkAcls: { defaultAction: 'Deny' }
  }
}
