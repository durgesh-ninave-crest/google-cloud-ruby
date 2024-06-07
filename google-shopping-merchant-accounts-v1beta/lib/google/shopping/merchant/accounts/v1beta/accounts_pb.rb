# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/accounts/v1beta/accounts.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/shopping/merchant/accounts/v1beta/user_pb'
require 'google/type/datetime_pb'


descriptor_data = "\n7google/shopping/merchant/accounts/v1beta/accounts.proto\x12(google.shopping.merchant.accounts.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x33google/shopping/merchant/accounts/v1beta/user.proto\x1a\x1agoogle/type/datetime.proto\"\x8a\x02\n\x07\x41\x63\x63ount\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x17\n\naccount_id\x18\x02 \x01(\x03\x42\x03\xe0\x41\x03\x12\x19\n\x0c\x61\x63\x63ount_name\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\radult_content\x18\x04 \x01(\x08\x12\x19\n\x0ctest_account\x18\x05 \x01(\x08\x42\x03\xe0\x41\x03\x12-\n\ttime_zone\x18\x06 \x01(\x0b\x32\x15.google.type.TimeZoneB\x03\xe0\x41\x02\x12\x1a\n\rlanguage_code\x18\x07 \x01(\tB\x03\xe0\x41\x02:;\xea\x41\x38\n\"merchantapi.googleapis.com/Account\x12\x12\x61\x63\x63ounts/{account}\"M\n\x11GetAccountRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"merchantapi.googleapis.com/Account\"\xf9\x05\n CreateAndConfigureAccountRequest\x12G\n\x07\x61\x63\x63ount\x18\x01 \x01(\x0b\x32\x31.google.shopping.merchant.accounts.v1beta.AccountB\x03\xe0\x41\x02\x12O\n\x05users\x18\x02 \x03(\x0b\x32;.google.shopping.merchant.accounts.v1beta.CreateUserRequestB\x03\xe0\x41\x01\x12\x8a\x01\n\x17\x61\x63\x63\x65pt_terms_of_service\x18\x03 \x01(\x0b\x32_.google.shopping.merchant.accounts.v1beta.CreateAndConfigureAccountRequest.AcceptTermsOfServiceB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12r\n\x07service\x18\x04 \x03(\x0b\x32\\.google.shopping.merchant.accounts.v1beta.CreateAndConfigureAccountRequest.AddAccountServiceB\x03\xe0\x41\x01\x1aq\n\x14\x41\x63\x63\x65ptTermsOfService\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)merchantapi.googleapis.com/TermsOfService\x12\x18\n\x0bregion_code\x18\x03 \x01(\tB\x03\xe0\x41\x02\x1a\xaa\x01\n\x11\x41\x64\x64\x41\x63\x63ountService\x12\x35\n\x13\x61\x63\x63ount_aggregation\x18\x02 \x01(\x0b\x32\x16.google.protobuf.EmptyH\x00\x12\x41\n\x08provider\x18\x01 \x01(\tB*\xe0\x41\x01\xfa\x41$\n\"merchantapi.googleapis.com/AccountH\x01\x88\x01\x01\x42\x0e\n\x0cservice_typeB\x0b\n\t_providerB\x1a\n\x18_accept_terms_of_service\"P\n\x14\x44\x65leteAccountRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"merchantapi.googleapis.com/Account\"\x95\x01\n\x14UpdateAccountRequest\x12G\n\x07\x61\x63\x63ount\x18\x01 \x01(\x0b\x32\x31.google.shopping.merchant.accounts.v1beta.AccountB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"[\n\x13ListAccountsRequest\x12\x16\n\tpage_size\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x03 \x01(\tB\x03\xe0\x41\x01\"t\n\x14ListAccountsResponse\x12\x43\n\x08\x61\x63\x63ounts\x18\x01 \x03(\x0b\x32\x31.google.shopping.merchant.accounts.v1beta.Account\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x87\x01\n\x16ListSubAccountsRequest\x12<\n\x08provider\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"merchantapi.googleapis.com/Account\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"w\n\x17ListSubAccountsResponse\x12\x43\n\x08\x61\x63\x63ounts\x18\x01 \x03(\x0b\x32\x31.google.shopping.merchant.accounts.v1beta.Account\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\xee\t\n\x0f\x41\x63\x63ountsService\x12\xaf\x01\n\nGetAccount\x12;.google.shopping.merchant.accounts.v1beta.GetAccountRequest\x1a\x31.google.shopping.merchant.accounts.v1beta.Account\"1\xda\x41\x04name\x82\xd3\xe4\x93\x02$\x12\"/accounts/v1beta/{name=accounts/*}\x12\xd3\x01\n\x19\x43reateAndConfigureAccount\x12J.google.shopping.merchant.accounts.v1beta.CreateAndConfigureAccountRequest\x1a\x31.google.shopping.merchant.accounts.v1beta.Account\"7\x82\xd3\xe4\x93\x02\x31\",/accounts/v1beta/accounts:createAndConfigure:\x01*\x12\x9a\x01\n\rDeleteAccount\x12>.google.shopping.merchant.accounts.v1beta.DeleteAccountRequest\x1a\x16.google.protobuf.Empty\"1\xda\x41\x04name\x82\xd3\xe4\x93\x02$*\"/accounts/v1beta/{name=accounts/*}\x12\xd5\x01\n\rUpdateAccount\x12>.google.shopping.merchant.accounts.v1beta.UpdateAccountRequest\x1a\x31.google.shopping.merchant.accounts.v1beta.Account\"Q\xda\x41\x13\x61\x63\x63ount,update_mask\x82\xd3\xe4\x93\x02\x35\x32*/accounts/v1beta/{account.name=accounts/*}:\x07\x61\x63\x63ount\x12\xb0\x01\n\x0cListAccounts\x12=.google.shopping.merchant.accounts.v1beta.ListAccountsRequest\x1a>.google.shopping.merchant.accounts.v1beta.ListAccountsResponse\"!\x82\xd3\xe4\x93\x02\x1b\x12\x19/accounts/v1beta/accounts\x12\xe1\x01\n\x0fListSubAccounts\x12@.google.shopping.merchant.accounts.v1beta.ListSubAccountsRequest\x1a\x41.google.shopping.merchant.accounts.v1beta.ListSubAccountsResponse\"I\xda\x41\x08provider\x82\xd3\xe4\x93\x02\x38\x12\x36/accounts/v1beta/{provider=accounts/*}:listSubaccounts\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\x8f\x01\n,com.google.shopping.merchant.accounts.v1betaB\rAccountsProtoP\x01ZNcloud.google.com/go/shopping/merchant/accounts/apiv1beta/accountspb;accountspbb\x06proto3"

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
    ["google.type.TimeZone", "google/type/datetime.proto"],
    ["google.shopping.merchant.accounts.v1beta.CreateUserRequest", "google/shopping/merchant/accounts/v1beta/user.proto"],
    ["google.protobuf.Empty", "google/protobuf/empty.proto"],
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
          Account = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.Account").msgclass
          GetAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.GetAccountRequest").msgclass
          CreateAndConfigureAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.CreateAndConfigureAccountRequest").msgclass
          CreateAndConfigureAccountRequest::AcceptTermsOfService = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.CreateAndConfigureAccountRequest.AcceptTermsOfService").msgclass
          CreateAndConfigureAccountRequest::AddAccountService = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.CreateAndConfigureAccountRequest.AddAccountService").msgclass
          DeleteAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.DeleteAccountRequest").msgclass
          UpdateAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.UpdateAccountRequest").msgclass
          ListAccountsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.ListAccountsRequest").msgclass
          ListAccountsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.ListAccountsResponse").msgclass
          ListSubAccountsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.ListSubAccountsRequest").msgclass
          ListSubAccountsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.ListSubAccountsResponse").msgclass
        end
      end
    end
  end
end
