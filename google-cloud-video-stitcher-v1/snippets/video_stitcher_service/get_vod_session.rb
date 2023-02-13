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

# [START videostitcher_v1_generated_VideoStitcherService_GetVodSession_sync]
require "google/cloud/video/stitcher/v1"

##
# Snippet for the get_vod_session call in the VideoStitcherService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Video::Stitcher::V1::VideoStitcherService::Client#get_vod_session.
# It may require modification in order to execute successfully.
#
def get_vod_session
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Video::Stitcher::V1::VideoStitcherService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Video::Stitcher::V1::GetVodSessionRequest.new

  # Call the get_vod_session method.
  result = client.get_vod_session request

  # The returned object is of type Google::Cloud::Video::Stitcher::V1::VodSession.
  p result
end
# [END videostitcher_v1_generated_VideoStitcherService_GetVodSession_sync]
