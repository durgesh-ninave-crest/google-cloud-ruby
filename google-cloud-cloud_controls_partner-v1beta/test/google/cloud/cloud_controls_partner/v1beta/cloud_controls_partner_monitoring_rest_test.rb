# frozen_string_literal: true

# Copyright 2024 Google LLC
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
require "gapic/rest"
require "google/cloud/cloudcontrolspartner/v1beta/monitoring_pb"
require "google/cloud/cloud_controls_partner/v1beta/cloud_controls_partner_monitoring/rest"


class ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerMonitoring::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_list_violations
    # Create test objects.
    client_result = ::Google::Cloud::CloudControlsPartner::V1beta::ListViolationsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"
    interval = {}

    list_violations_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerMonitoring::Rest::ServiceStub.stub :transcode_list_violations_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_violations_client_stub do
        # Create client
        client = ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerMonitoring::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_violations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, interval: interval }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_violations parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, interval: interval do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_violations ::Google::Cloud::CloudControlsPartner::V1beta::ListViolationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, interval: interval) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_violations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, interval: interval }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_violations(::Google::Cloud::CloudControlsPartner::V1beta::ListViolationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by, interval: interval), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_violations_client_stub.call_count
      end
    end
  end

  def test_get_violation
    # Create test objects.
    client_result = ::Google::Cloud::CloudControlsPartner::V1beta::Violation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_violation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerMonitoring::Rest::ServiceStub.stub :transcode_get_violation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_violation_client_stub do
        # Create client
        client = ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerMonitoring::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_violation({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_violation name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_violation ::Google::Cloud::CloudControlsPartner::V1beta::GetViolationRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_violation({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_violation(::Google::Cloud::CloudControlsPartner::V1beta::GetViolationRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_violation_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerMonitoring::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerMonitoring::Rest::Client::Configuration, config
  end
end
