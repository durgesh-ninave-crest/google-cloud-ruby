# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/servicedirectory/v1beta1/endpoint.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n4google/cloud/servicedirectory/v1beta1/endpoint.proto\x12%google.cloud.servicedirectory.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xa6\x04\n\x08\x45ndpoint\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x14\n\x07\x61\x64\x64ress\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x04port\x18\x03 \x01(\x05\x42\x03\xe0\x41\x01\x12T\n\x08metadata\x18\x04 \x03(\x0b\x32=.google.cloud.servicedirectory.v1beta1.Endpoint.MetadataEntryB\x03\xe0\x41\x01\x12@\n\x07network\x18\x05 \x01(\tB/\xe0\x41\x05\xfa\x41)\n\'servicedirectory.googleapis.com/Network\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x10\n\x03uid\x18\x08 \x01(\tB\x03\xe0\x41\x03\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x96\x01\xea\x41\x92\x01\n(servicedirectory.googleapis.com/Endpoint\x12\x66projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}/endpoints/{endpoint}B\xf5\x02\n)com.google.cloud.servicedirectory.v1beta1B\rEndpointProtoP\x01ZUcloud.google.com/go/servicedirectory/apiv1beta1/servicedirectorypb;servicedirectorypb\xf8\x01\x01\xaa\x02%Google.Cloud.ServiceDirectory.V1Beta1\xca\x02%Google\\Cloud\\ServiceDirectory\\V1beta1\xea\x02(Google::Cloud::ServiceDirectory::V1beta1\xea\x41\x61\n\'servicedirectory.googleapis.com/Network\x12\x36projects/{project}/locations/global/networks/{network}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module ServiceDirectory
      module V1beta1
        Endpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.servicedirectory.v1beta1.Endpoint").msgclass
      end
    end
  end
end
