# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/merchant/accounts/v1beta/regions.proto for package 'google.shopping.merchant.accounts.v1beta'
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
require 'google/shopping/merchant/accounts/v1beta/regions_pb'

module Google
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          module RegionsService
            # Manages regions configuration.
            #
            # This API defines the following resource model:
            #
            # - [Region][google.shopping.merchant.accounts.v1main.Region]
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.shopping.merchant.accounts.v1beta.RegionsService'

              # Retrieves a region defined in your Merchant Center account.
              rpc :GetRegion, ::Google::Shopping::Merchant::Accounts::V1beta::GetRegionRequest, ::Google::Shopping::Merchant::Accounts::V1beta::Region
              # Creates a region definition in your Merchant Center account. Executing this
              # method requires admin access.
              rpc :CreateRegion, ::Google::Shopping::Merchant::Accounts::V1beta::CreateRegionRequest, ::Google::Shopping::Merchant::Accounts::V1beta::Region
              # Updates a region definition in your Merchant Center account. Executing this
              # method requires admin access.
              rpc :UpdateRegion, ::Google::Shopping::Merchant::Accounts::V1beta::UpdateRegionRequest, ::Google::Shopping::Merchant::Accounts::V1beta::Region
              # Deletes a region definition from your Merchant Center account. Executing
              # this method requires admin access.
              rpc :DeleteRegion, ::Google::Shopping::Merchant::Accounts::V1beta::DeleteRegionRequest, ::Google::Protobuf::Empty
              # Lists the regions in your Merchant Center account.
              rpc :ListRegions, ::Google::Shopping::Merchant::Accounts::V1beta::ListRegionsRequest, ::Google::Shopping::Merchant::Accounts::V1beta::ListRegionsResponse
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
