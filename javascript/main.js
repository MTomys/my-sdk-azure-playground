const {BlobServiceClient, StorageSharedKeyCredential} = require('azure/storage/blob')
const process = require('process')
const accountName = process.env.ACCOUNT_NAME
const accountKey = process.env.ACCOUNT_KEY

const keyCredential = new StorageSharedKeyCredential(accountName, accountKey)
const blobClient = new BlobServiceClient(`https://${accountName}.blob.core.windows.net`, keyCredential)

console.log(blobClient)