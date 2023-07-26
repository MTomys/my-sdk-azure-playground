require 'azure/storage/blob'

account_name = ENV['ACCOUNT_NAME']
account_key =  ENV['ACCOUNT_KEY']

puts account_key
puts account_name

blob_client = Azure::Storage::Blob::BlobService.create(
    storage_account_name: account_name,
    storage_access_key: account_key
)

puts blob_client

blob_client.list_containers().each do |container|
    puts container.name
    blob_client.list_blobs(container.name).each do |blob|
        puts "-> #{blob.name}"
    end
end