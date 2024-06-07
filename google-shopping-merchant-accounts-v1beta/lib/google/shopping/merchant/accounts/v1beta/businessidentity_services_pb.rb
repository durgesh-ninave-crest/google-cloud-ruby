# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/merchant/accounts/v1beta/businessidentity.proto for package 'google.shopping.merchant.accounts.v1beta'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/shopping/merchant/accounts/v1beta/businessidentity_pb'

module Google
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          module BusinessIdentityService
            # Service to support [business
            # identity](https://support.google.com/merchants/answer/12564247) API.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.shopping.merchant.accounts.v1beta.BusinessIdentityService'

              # Retrieves the business identity of an account.
              rpc :GetBusinessIdentity, ::Google::Shopping::Merchant::Accounts::V1beta::GetBusinessIdentityRequest, ::Google::Shopping::Merchant::Accounts::V1beta::BusinessIdentity
              # Updates the business identity of an account. Executing this method requires
              # admin access.
              rpc :UpdateBusinessIdentity, ::Google::Shopping::Merchant::Accounts::V1beta::UpdateBusinessIdentityRequest, ::Google::Shopping::Merchant::Accounts::V1beta::BusinessIdentity
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
