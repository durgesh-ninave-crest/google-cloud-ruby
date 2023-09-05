# frozen_string_literal: true

# Copyright 2023 Google LLC
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

# [START discoveryengine_v1_generated_ConversationalSearchService_DeleteConversation_sync]
require "google/cloud/discovery_engine/v1"

##
# Snippet for the delete_conversation call in the ConversationalSearchService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::DiscoveryEngine::V1::ConversationalSearchService::Client#delete_conversation.
# It may require modification in order to execute successfully.
#
def delete_conversation
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::DiscoveryEngine::V1::ConversationalSearchService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::DiscoveryEngine::V1::DeleteConversationRequest.new

  # Call the delete_conversation method.
  result = client.delete_conversation request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END discoveryengine_v1_generated_ConversationalSearchService_DeleteConversation_sync]
