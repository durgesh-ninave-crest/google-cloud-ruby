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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/dialogflow/cx/v3/version"
require "google/cloud/dialogflow/cx/v3/bindings_override"

require "google/cloud/dialogflow/cx/v3/sessions/credentials"
require "google/cloud/dialogflow/cx/v3/sessions/paths"
require "google/cloud/dialogflow/cx/v3/sessions/rest/client"

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          ##
          # A session represents an interaction with a user. You retrieve user input
          # and pass it to the
          # {::Google::Cloud::Dialogflow::CX::V3::Sessions::Client#detect_intent DetectIntent} method to
          # determine user intent and respond.
          #
          # To load this service and instantiate a REST client:
          #
          #     require "google/cloud/dialogflow/cx/v3/sessions/rest"
          #     client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Rest::Client.new
          #
          module Sessions
            # Client for the REST transport
            module Rest
            end
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/cloud/dialogflow/cx/v3/sessions/rest/helpers" if ::File.file? helper_path
