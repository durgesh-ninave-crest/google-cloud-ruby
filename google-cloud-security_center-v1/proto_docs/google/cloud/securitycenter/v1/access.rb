# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module SecurityCenter
      module V1
        # Represents an access event.
        # @!attribute [rw] principal_email
        #   @return [::String]
        #     Associated email, such as "foo@google.com".
        #
        #     The email address of the authenticated user (or service account on behalf
        #     of third party principal) making the request. For third party identity
        #     callers, the `principal_subject` field is populated instead of this field.
        #     For privacy reasons, the principal email address is sometimes redacted.
        #     For more information, see [Caller identities in audit
        #     logs](https://cloud.google.com/logging/docs/audit#user-id).
        # @!attribute [rw] caller_ip
        #   @return [::String]
        #     Caller's IP address, such as "1.1.1.1".
        # @!attribute [rw] caller_ip_geo
        #   @return [::Google::Cloud::SecurityCenter::V1::Geolocation]
        #     The caller IP's geolocation, which identifies where the call came from.
        # @!attribute [rw] user_agent_family
        #   @return [::String]
        #     What kind of user agent is associated, for example operating system shells,
        #     embedded or stand-alone applications, etc.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     This is the API service that the service account made a call to, e.g.
        #     "iam.googleapis.com"
        # @!attribute [rw] method_name
        #   @return [::String]
        #     The method that the service account called, e.g. "SetIamPolicy".
        # @!attribute [rw] principal_subject
        #   @return [::String]
        #     A string representing the principal_subject associated with the identity.
        #     As compared to `principal_email`, supports principals that aren't
        #     associated with email addresses, such as third party principals. For most
        #     identities, the format will be `principal://iam.googleapis.com/{identity
        #     pool name}/subjects/\\{subject}` except for some GKE identities
        #     (GKE_WORKLOAD, FREEFORM, GKE_HUB_WORKLOAD) that are still in the legacy
        #     format `serviceAccount:{identity pool name}[{subject}]`
        # @!attribute [rw] service_account_key_name
        #   @return [::String]
        #     The name of the service account key used to create or exchange
        #     credentials for authenticating the service account making the request.
        #     This is a scheme-less URI full resource name. For example:
        #
        #     "//iam.googleapis.com/projects/\\{PROJECT_ID}/serviceAccounts/\\{ACCOUNT}/keys/\\{key}"
        # @!attribute [rw] service_account_delegation_info
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::ServiceAccountDelegationInfo>]
        #     Identity delegation history of an authenticated service account that makes
        #     the request. It contains information on the real authorities that try to
        #     access GCP resources by delegating on a service account. When multiple
        #     authorities are present, they are guaranteed to be sorted based on the
        #     original ordering of the identity delegation events.
        # @!attribute [rw] user_name
        #   @return [::String]
        #     A string that represents the username of a user, user account, or other
        #     entity involved in the access event. What the entity is and what its role
        #     in the access event is depends on the finding that this field appears in.
        #     The entity is likely not an IAM principal, but could be a user that is
        #     logged into an operating system, if the finding is VM-related, or a user
        #     that is logged into some type of application that is involved in the
        #     access event.
        class Access
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Identity delegation history of an authenticated service account.
        # @!attribute [rw] principal_email
        #   @return [::String]
        #     The email address of a Google account.
        # @!attribute [rw] principal_subject
        #   @return [::String]
        #     A string representing the principal_subject associated with the identity.
        #     As compared to `principal_email`, supports principals that aren't
        #     associated with email addresses, such as third party principals. For most
        #     identities, the format will be `principal://iam.googleapis.com/{identity
        #     pool name}/subjects/\\{subject}` except for some GKE identities
        #     (GKE_WORKLOAD, FREEFORM, GKE_HUB_WORKLOAD) that are still in the legacy
        #     format `serviceAccount:{identity pool name}[{subject}]`
        class ServiceAccountDelegationInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a geographical location for a given access.
        # @!attribute [rw] region_code
        #   @return [::String]
        #     A CLDR.
        class Geolocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
