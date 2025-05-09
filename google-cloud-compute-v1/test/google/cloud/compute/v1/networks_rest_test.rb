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
require "gapic/rest"
require "google/cloud/compute/v1/compute_pb"
require "google/cloud/compute/v1/networks/rest"


class ::Google::Cloud::Compute::V1::Networks::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
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

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_add_peering
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    network = "hello world"
    networks_add_peering_request_resource = {}
    project = "hello world"
    request_id = "hello world"

    add_peering_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_add_peering_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, add_peering_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.add_peering({ network: network, networks_add_peering_request_resource: networks_add_peering_request_resource, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.add_peering network: network, networks_add_peering_request_resource: networks_add_peering_request_resource, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.add_peering ::Google::Cloud::Compute::V1::AddPeeringNetworkRequest.new(network: network, networks_add_peering_request_resource: networks_add_peering_request_resource, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.add_peering({ network: network, networks_add_peering_request_resource: networks_add_peering_request_resource, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.add_peering(::Google::Cloud::Compute::V1::AddPeeringNetworkRequest.new(network: network, networks_add_peering_request_resource: networks_add_peering_request_resource, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, add_peering_client_stub.call_count
      end
    end
  end

  def test_delete
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    network = "hello world"
    project = "hello world"
    request_id = "hello world"

    delete_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_delete_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete({ network: network, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete network: network, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete ::Google::Cloud::Compute::V1::DeleteNetworkRequest.new(network: network, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete({ network: network, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete(::Google::Cloud::Compute::V1::DeleteNetworkRequest.new(network: network, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_client_stub.call_count
      end
    end
  end

  def test_get
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Network.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    network = "hello world"
    project = "hello world"

    get_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_get_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get({ network: network, project: project }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get network: network, project: project do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get ::Google::Cloud::Compute::V1::GetNetworkRequest.new(network: network, project: project) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get({ network: network, project: project }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get(::Google::Cloud::Compute::V1::GetNetworkRequest.new(network: network, project: project), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_client_stub.call_count
      end
    end
  end

  def test_get_effective_firewalls
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::NetworksGetEffectiveFirewallsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    network = "hello world"
    project = "hello world"

    get_effective_firewalls_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_get_effective_firewalls_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_effective_firewalls_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_effective_firewalls({ network: network, project: project }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_effective_firewalls network: network, project: project do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_effective_firewalls ::Google::Cloud::Compute::V1::GetEffectiveFirewallsNetworkRequest.new(network: network, project: project) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_effective_firewalls({ network: network, project: project }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_effective_firewalls(::Google::Cloud::Compute::V1::GetEffectiveFirewallsNetworkRequest.new(network: network, project: project), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_effective_firewalls_client_stub.call_count
      end
    end
  end

  def test_insert
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    network_resource = {}
    project = "hello world"
    request_id = "hello world"

    insert_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_insert_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, insert_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.insert({ network_resource: network_resource, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.insert network_resource: network_resource, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.insert ::Google::Cloud::Compute::V1::InsertNetworkRequest.new(network_resource: network_resource, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.insert({ network_resource: network_resource, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.insert(::Google::Cloud::Compute::V1::InsertNetworkRequest.new(network_resource: network_resource, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, insert_client_stub.call_count
      end
    end
  end

  def test_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::NetworkList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true

    list_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_list_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list ::Google::Cloud::Compute::V1::ListNetworksRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list(::Google::Cloud::Compute::V1::ListNetworksRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_client_stub.call_count
      end
    end
  end

  def test_list_peering_routes
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::ExchangedPeeringRoutesList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    direction = "hello world"
    filter = "hello world"
    max_results = 42
    network = "hello world"
    order_by = "hello world"
    page_token = "hello world"
    peering_name = "hello world"
    project = "hello world"
    region = "hello world"
    return_partial_success = true

    list_peering_routes_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_list_peering_routes_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_peering_routes_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_peering_routes({ direction: direction, filter: filter, max_results: max_results, network: network, order_by: order_by, page_token: page_token, peering_name: peering_name, project: project, region: region, return_partial_success: return_partial_success }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_peering_routes direction: direction, filter: filter, max_results: max_results, network: network, order_by: order_by, page_token: page_token, peering_name: peering_name, project: project, region: region, return_partial_success: return_partial_success do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_peering_routes ::Google::Cloud::Compute::V1::ListPeeringRoutesNetworksRequest.new(direction: direction, filter: filter, max_results: max_results, network: network, order_by: order_by, page_token: page_token, peering_name: peering_name, project: project, region: region, return_partial_success: return_partial_success) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_peering_routes({ direction: direction, filter: filter, max_results: max_results, network: network, order_by: order_by, page_token: page_token, peering_name: peering_name, project: project, region: region, return_partial_success: return_partial_success }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_peering_routes(::Google::Cloud::Compute::V1::ListPeeringRoutesNetworksRequest.new(direction: direction, filter: filter, max_results: max_results, network: network, order_by: order_by, page_token: page_token, peering_name: peering_name, project: project, region: region, return_partial_success: return_partial_success), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_peering_routes_client_stub.call_count
      end
    end
  end

  def test_patch
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    network = "hello world"
    network_resource = {}
    project = "hello world"
    request_id = "hello world"

    patch_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_patch_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, patch_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.patch({ network: network, network_resource: network_resource, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.patch network: network, network_resource: network_resource, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.patch ::Google::Cloud::Compute::V1::PatchNetworkRequest.new(network: network, network_resource: network_resource, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.patch({ network: network, network_resource: network_resource, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.patch(::Google::Cloud::Compute::V1::PatchNetworkRequest.new(network: network, network_resource: network_resource, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, patch_client_stub.call_count
      end
    end
  end

  def test_remove_peering
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    network = "hello world"
    networks_remove_peering_request_resource = {}
    project = "hello world"
    request_id = "hello world"

    remove_peering_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_remove_peering_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, remove_peering_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.remove_peering({ network: network, networks_remove_peering_request_resource: networks_remove_peering_request_resource, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.remove_peering network: network, networks_remove_peering_request_resource: networks_remove_peering_request_resource, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.remove_peering ::Google::Cloud::Compute::V1::RemovePeeringNetworkRequest.new(network: network, networks_remove_peering_request_resource: networks_remove_peering_request_resource, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.remove_peering({ network: network, networks_remove_peering_request_resource: networks_remove_peering_request_resource, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.remove_peering(::Google::Cloud::Compute::V1::RemovePeeringNetworkRequest.new(network: network, networks_remove_peering_request_resource: networks_remove_peering_request_resource, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, remove_peering_client_stub.call_count
      end
    end
  end

  def test_switch_to_custom_mode
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    network = "hello world"
    project = "hello world"
    request_id = "hello world"

    switch_to_custom_mode_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_switch_to_custom_mode_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, switch_to_custom_mode_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.switch_to_custom_mode({ network: network, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.switch_to_custom_mode network: network, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.switch_to_custom_mode ::Google::Cloud::Compute::V1::SwitchToCustomModeNetworkRequest.new(network: network, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.switch_to_custom_mode({ network: network, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.switch_to_custom_mode(::Google::Cloud::Compute::V1::SwitchToCustomModeNetworkRequest.new(network: network, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, switch_to_custom_mode_client_stub.call_count
      end
    end
  end

  def test_update_peering
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    network = "hello world"
    networks_update_peering_request_resource = {}
    project = "hello world"
    request_id = "hello world"

    update_peering_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Networks::Rest::ServiceStub.stub :transcode_update_peering_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_peering_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_peering({ network: network, networks_update_peering_request_resource: networks_update_peering_request_resource, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_peering network: network, networks_update_peering_request_resource: networks_update_peering_request_resource, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_peering ::Google::Cloud::Compute::V1::UpdatePeeringNetworkRequest.new(network: network, networks_update_peering_request_resource: networks_update_peering_request_resource, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_peering({ network: network, networks_update_peering_request_resource: networks_update_peering_request_resource, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_peering(::Google::Cloud::Compute::V1::UpdatePeeringNetworkRequest.new(network: network, networks_update_peering_request_resource: networks_update_peering_request_resource, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_peering_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Compute::V1::Networks::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Compute::V1::Networks::Rest::Client::Configuration, config
  end
end
