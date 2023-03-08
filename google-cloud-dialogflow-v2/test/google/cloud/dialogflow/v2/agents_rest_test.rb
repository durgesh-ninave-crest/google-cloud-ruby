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

require "helper"
require "gapic/rest"
require "google/cloud/dialogflow/v2/agent_pb"
require "google/cloud/dialogflow/v2/agents/rest"


class ::Google::Cloud::Dialogflow::V2::Agents::Rest::ClientTest < Minitest::Test
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
  end

  def test_get_agent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::Agent.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    get_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Agents::Rest::ServiceStub.stub :transcode_get_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_agent({ parent: parent }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_agent parent: parent do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_agent ::Google::Cloud::Dialogflow::V2::GetAgentRequest.new(parent: parent) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_agent({ parent: parent }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_agent(::Google::Cloud::Dialogflow::V2::GetAgentRequest.new(parent: parent), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_agent_client_stub.call_count
      end
    end
  end

  def test_set_agent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::Agent.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    agent = {}
    update_mask = {}

    set_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Agents::Rest::ServiceStub.stub :transcode_set_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_agent({ agent: agent, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_agent agent: agent, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_agent ::Google::Cloud::Dialogflow::V2::SetAgentRequest.new(agent: agent, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_agent({ agent: agent, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_agent(::Google::Cloud::Dialogflow::V2::SetAgentRequest.new(agent: agent, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_agent_client_stub.call_count
      end
    end
  end

  def test_delete_agent
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    delete_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Agents::Rest::ServiceStub.stub :transcode_delete_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_agent({ parent: parent }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_agent parent: parent do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_agent ::Google::Cloud::Dialogflow::V2::DeleteAgentRequest.new(parent: parent) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_agent({ parent: parent }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_agent(::Google::Cloud::Dialogflow::V2::DeleteAgentRequest.new(parent: parent), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_agent_client_stub.call_count
      end
    end
  end

  def test_search_agents
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::SearchAgentsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    search_agents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Agents::Rest::ServiceStub.stub :transcode_search_agents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_agents_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_agents({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_agents parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_agents ::Google::Cloud::Dialogflow::V2::SearchAgentsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_agents({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_agents(::Google::Cloud::Dialogflow::V2::SearchAgentsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_agents_client_stub.call_count
      end
    end
  end

  def test_train_agent
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    train_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Agents::Rest::ServiceStub.stub :transcode_train_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, train_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.train_agent({ parent: parent }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.train_agent parent: parent do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.train_agent ::Google::Cloud::Dialogflow::V2::TrainAgentRequest.new(parent: parent) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.train_agent({ parent: parent }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.train_agent(::Google::Cloud::Dialogflow::V2::TrainAgentRequest.new(parent: parent), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, train_agent_client_stub.call_count
      end
    end
  end

  def test_export_agent
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    agent_uri = "hello world"

    export_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Agents::Rest::ServiceStub.stub :transcode_export_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, export_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.export_agent({ parent: parent, agent_uri: agent_uri }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.export_agent parent: parent, agent_uri: agent_uri do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.export_agent ::Google::Cloud::Dialogflow::V2::ExportAgentRequest.new(parent: parent, agent_uri: agent_uri) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.export_agent({ parent: parent, agent_uri: agent_uri }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.export_agent(::Google::Cloud::Dialogflow::V2::ExportAgentRequest.new(parent: parent, agent_uri: agent_uri), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, export_agent_client_stub.call_count
      end
    end
  end

  def test_import_agent
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    agent_uri = "hello world"

    import_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Agents::Rest::ServiceStub.stub :transcode_import_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, import_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.import_agent({ parent: parent, agent_uri: agent_uri }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.import_agent parent: parent, agent_uri: agent_uri do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.import_agent ::Google::Cloud::Dialogflow::V2::ImportAgentRequest.new(parent: parent, agent_uri: agent_uri) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.import_agent({ parent: parent, agent_uri: agent_uri }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.import_agent(::Google::Cloud::Dialogflow::V2::ImportAgentRequest.new(parent: parent, agent_uri: agent_uri), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, import_agent_client_stub.call_count
      end
    end
  end

  def test_restore_agent
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    agent_uri = "hello world"

    restore_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Agents::Rest::ServiceStub.stub :transcode_restore_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, restore_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.restore_agent({ parent: parent, agent_uri: agent_uri }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.restore_agent parent: parent, agent_uri: agent_uri do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.restore_agent ::Google::Cloud::Dialogflow::V2::RestoreAgentRequest.new(parent: parent, agent_uri: agent_uri) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.restore_agent({ parent: parent, agent_uri: agent_uri }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.restore_agent(::Google::Cloud::Dialogflow::V2::RestoreAgentRequest.new(parent: parent, agent_uri: agent_uri), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, restore_agent_client_stub.call_count
      end
    end
  end

  def test_get_validation_result
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::ValidationResult.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    language_code = "hello world"

    get_validation_result_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Agents::Rest::ServiceStub.stub :transcode_get_validation_result_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_validation_result_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_validation_result({ parent: parent, language_code: language_code }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_validation_result parent: parent, language_code: language_code do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_validation_result ::Google::Cloud::Dialogflow::V2::GetValidationResultRequest.new(parent: parent, language_code: language_code) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_validation_result({ parent: parent, language_code: language_code }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_validation_result(::Google::Cloud::Dialogflow::V2::GetValidationResultRequest.new(parent: parent, language_code: language_code), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_validation_result_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client::Configuration, config
  end
end
