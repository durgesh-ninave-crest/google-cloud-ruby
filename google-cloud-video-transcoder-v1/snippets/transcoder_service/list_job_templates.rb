# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START transcoder_v1_generated_TranscoderService_ListJobTemplates_sync]
require "google/cloud/video/transcoder/v1"

##
# Snippet for the list_job_templates call in the TranscoderService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Video::Transcoder::V1::TranscoderService::Client#list_job_templates.
# It may require modification in order to execute successfully.
#
def list_job_templates
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Video::Transcoder::V1::TranscoderService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Video::Transcoder::V1::ListJobTemplatesRequest.new

  # Call the list_job_templates method.
  result = client.list_job_templates request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::Video::Transcoder::V1::JobTemplate.
    p item
  end
end
# [END transcoder_v1_generated_TranscoderService_ListJobTemplates_sync]
