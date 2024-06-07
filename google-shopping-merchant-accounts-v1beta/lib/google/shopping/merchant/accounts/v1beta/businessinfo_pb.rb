# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/accounts/v1beta/businessinfo.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'
require 'google/shopping/merchant/accounts/v1beta/customerservice_pb'
require 'google/shopping/merchant/accounts/v1beta/phoneverificationstate_pb'
require 'google/type/phone_number_pb'
require 'google/type/postal_address_pb'


descriptor_data = "\n;google/shopping/merchant/accounts/v1beta/businessinfo.proto\x12(google.shopping.merchant.accounts.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/protobuf/field_mask.proto\x1a>google/shopping/merchant/accounts/v1beta/customerservice.proto\x1a\x45google/shopping/merchant/accounts/v1beta/phoneverificationstate.proto\x1a\x1egoogle/type/phone_number.proto\x1a google/type/postal_address.proto\"\x8c\x04\n\x0c\x42usinessInfo\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x35\n\x07\x61\x64\x64ress\x18\x02 \x01(\x0b\x32\x1a.google.type.PostalAddressB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12\x31\n\x05phone\x18\x03 \x01(\x0b\x32\x18.google.type.PhoneNumberB\x03\xe0\x41\x03H\x01\x88\x01\x01\x12l\n\x18phone_verification_state\x18\x04 \x01(\x0e\x32@.google.shopping.merchant.accounts.v1beta.PhoneVerificationStateB\x03\xe0\x41\x03H\x02\x88\x01\x01\x12]\n\x10\x63ustomer_service\x18\x05 \x01(\x0b\x32\x39.google.shopping.merchant.accounts.v1beta.CustomerServiceB\x03\xe0\x41\x01H\x03\x88\x01\x01:j\xea\x41g\n\'merchantapi.googleapis.com/BusinessInfo\x12\x1f\x61\x63\x63ounts/{account}/businessInfo*\rbusinessInfos2\x0c\x62usinessInfoB\n\n\x08_addressB\x08\n\x06_phoneB\x1b\n\x19_phone_verification_stateB\x13\n\x11_customer_service\"W\n\x16GetBusinessInfoRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'merchantapi.googleapis.com/BusinessInfo\"\xa5\x01\n\x19UpdateBusinessInfoRequest\x12R\n\rbusiness_info\x18\x01 \x01(\x0b\x32\x36.google.shopping.merchant.accounts.v1beta.BusinessInfoB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x32\xb2\x04\n\x13\x42usinessInfoService\x12\xcb\x01\n\x0fGetBusinessInfo\x12@.google.shopping.merchant.accounts.v1beta.GetBusinessInfoRequest\x1a\x36.google.shopping.merchant.accounts.v1beta.BusinessInfo\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//accounts/v1beta/{name=accounts/*/businessInfo}\x12\x83\x02\n\x12UpdateBusinessInfo\x12\x43.google.shopping.merchant.accounts.v1beta.UpdateBusinessInfoRequest\x1a\x36.google.shopping.merchant.accounts.v1beta.BusinessInfo\"p\xda\x41\x19\x62usiness_info,update_mask\x82\xd3\xe4\x93\x02N2=/accounts/v1beta/{business_info.name=accounts/*/businessInfo}:\rbusiness_info\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\x93\x01\n,com.google.shopping.merchant.accounts.v1betaB\x11\x42usinessInfoProtoP\x01ZNcloud.google.com/go/shopping/merchant/accounts/apiv1beta/accountspb;accountspbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.type.PostalAddress", "google/type/postal_address.proto"],
    ["google.type.PhoneNumber", "google/type/phone_number.proto"],
    ["google.shopping.merchant.accounts.v1beta.CustomerService", "google/shopping/merchant/accounts/v1beta/customerservice.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          BusinessInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.BusinessInfo").msgclass
          GetBusinessInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.GetBusinessInfoRequest").msgclass
          UpdateBusinessInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.UpdateBusinessInfoRequest").msgclass
        end
      end
    end
  end
end
