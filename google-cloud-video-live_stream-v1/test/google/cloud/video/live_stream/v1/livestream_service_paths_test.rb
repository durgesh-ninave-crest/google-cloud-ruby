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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/video/live_stream/v1/livestream_service"

class ::Google::Cloud::Video::LiveStream::V1::LivestreamService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_asset_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Video::LiveStream::V1::LivestreamService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.asset_path project: "value0", location: "value1", asset: "value2"
      assert_equal "projects/value0/locations/value1/assets/value2", path
    end
  end

  def test_channel_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Video::LiveStream::V1::LivestreamService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.channel_path project: "value0", location: "value1", channel: "value2"
      assert_equal "projects/value0/locations/value1/channels/value2", path
    end
  end

  def test_clip_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Video::LiveStream::V1::LivestreamService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.clip_path project: "value0", location: "value1", channel: "value2", clip: "value3"
      assert_equal "projects/value0/locations/value1/channels/value2/clips/value3", path
    end
  end

  def test_event_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Video::LiveStream::V1::LivestreamService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.event_path project: "value0", location: "value1", channel: "value2", event: "value3"
      assert_equal "projects/value0/locations/value1/channels/value2/events/value3", path
    end
  end

  def test_input_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Video::LiveStream::V1::LivestreamService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.input_path project: "value0", location: "value1", input: "value2"
      assert_equal "projects/value0/locations/value1/inputs/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Video::LiveStream::V1::LivestreamService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_network_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Video::LiveStream::V1::LivestreamService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.network_path project: "value0", network: "value1"
      assert_equal "projects/value0/global/networks/value1", path
    end
  end

  def test_pool_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Video::LiveStream::V1::LivestreamService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.pool_path project: "value0", location: "value1", pool: "value2"
      assert_equal "projects/value0/locations/value1/pools/value2", path
    end
  end

  def test_secret_version_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Video::LiveStream::V1::LivestreamService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.secret_version_path project: "value0", secret: "value1", version: "value2"
      assert_equal "projects/value0/secrets/value1/versions/value2", path
    end
  end
end
