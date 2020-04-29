# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "simplecov"
require "minitest/autorun"

require "gapic/grpc/service_stub"

require "google/cloud/secretmanager/v1/service_pb"
require "google/cloud/secretmanager/v1/service_services_pb"
require "google/cloud/secret_manager/v1/secret_manager_service"

class ::Google::Cloud::SecretManager::V1::SecretManagerService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args
      @call_rpc_count += 1

      @requests << @block&.call(*args)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_list_secrets
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::ListSecretsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_secrets_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_secrets, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::ListSecretsRequest, request
      assert_equal "hello world", request.parent
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_secrets_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_secrets({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_secrets parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_secrets ::Google::Cloud::SecretManager::V1::ListSecretsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_secrets({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_secrets ::Google::Cloud::SecretManager::V1::ListSecretsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_secrets_client_stub.call_rpc_count
    end
  end

  def test_create_secret
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::Secret.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    secret_id = "hello world"
    secret = {}

    create_secret_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_secret, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::CreateSecretRequest, request
      assert_equal "hello world", request.parent
      assert_equal "hello world", request.secret_id
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::SecretManager::V1::Secret), request.secret
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_secret_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_secret({ parent: parent, secret_id: secret_id, secret: secret }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_secret parent: parent, secret_id: secret_id, secret: secret do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_secret ::Google::Cloud::SecretManager::V1::CreateSecretRequest.new(parent: parent, secret_id: secret_id, secret: secret) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_secret({ parent: parent, secret_id: secret_id, secret: secret }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_secret ::Google::Cloud::SecretManager::V1::CreateSecretRequest.new(parent: parent, secret_id: secret_id, secret: secret), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_secret_client_stub.call_rpc_count
    end
  end

  def test_add_secret_version
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::SecretVersion.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    payload = {}

    add_secret_version_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :add_secret_version, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::AddSecretVersionRequest, request
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::SecretManager::V1::SecretPayload), request.payload
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, add_secret_version_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.add_secret_version({ parent: parent, payload: payload }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.add_secret_version parent: parent, payload: payload do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.add_secret_version ::Google::Cloud::SecretManager::V1::AddSecretVersionRequest.new(parent: parent, payload: payload) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.add_secret_version({ parent: parent, payload: payload }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.add_secret_version ::Google::Cloud::SecretManager::V1::AddSecretVersionRequest.new(parent: parent, payload: payload), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, add_secret_version_client_stub.call_rpc_count
    end
  end

  def test_get_secret
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::Secret.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_secret_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_secret, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::GetSecretRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_secret_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_secret({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_secret name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_secret ::Google::Cloud::SecretManager::V1::GetSecretRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_secret({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_secret ::Google::Cloud::SecretManager::V1::GetSecretRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_secret_client_stub.call_rpc_count
    end
  end

  def test_update_secret
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::Secret.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    secret = {}
    update_mask = {}

    update_secret_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_secret, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::UpdateSecretRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::SecretManager::V1::Secret), request.secret
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request.update_mask
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_secret_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_secret({ secret: secret, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_secret secret: secret, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_secret ::Google::Cloud::SecretManager::V1::UpdateSecretRequest.new(secret: secret, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_secret({ secret: secret, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_secret ::Google::Cloud::SecretManager::V1::UpdateSecretRequest.new(secret: secret, update_mask: update_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_secret_client_stub.call_rpc_count
    end
  end

  def test_delete_secret
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_secret_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_secret, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::DeleteSecretRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_secret_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_secret({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_secret name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_secret ::Google::Cloud::SecretManager::V1::DeleteSecretRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_secret({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_secret ::Google::Cloud::SecretManager::V1::DeleteSecretRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_secret_client_stub.call_rpc_count
    end
  end

  def test_list_secret_versions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::ListSecretVersionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_secret_versions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_secret_versions, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::ListSecretVersionsRequest, request
      assert_equal "hello world", request.parent
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_secret_versions_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_secret_versions({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_secret_versions parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_secret_versions ::Google::Cloud::SecretManager::V1::ListSecretVersionsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_secret_versions({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_secret_versions ::Google::Cloud::SecretManager::V1::ListSecretVersionsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_secret_versions_client_stub.call_rpc_count
    end
  end

  def test_get_secret_version
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::SecretVersion.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_secret_version_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_secret_version, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::GetSecretVersionRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_secret_version_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_secret_version({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_secret_version name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_secret_version ::Google::Cloud::SecretManager::V1::GetSecretVersionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_secret_version({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_secret_version ::Google::Cloud::SecretManager::V1::GetSecretVersionRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_secret_version_client_stub.call_rpc_count
    end
  end

  def test_access_secret_version
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::AccessSecretVersionResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    access_secret_version_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :access_secret_version, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::AccessSecretVersionRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, access_secret_version_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.access_secret_version({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.access_secret_version name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.access_secret_version ::Google::Cloud::SecretManager::V1::AccessSecretVersionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.access_secret_version({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.access_secret_version ::Google::Cloud::SecretManager::V1::AccessSecretVersionRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, access_secret_version_client_stub.call_rpc_count
    end
  end

  def test_disable_secret_version
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::SecretVersion.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    disable_secret_version_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :disable_secret_version, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::DisableSecretVersionRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, disable_secret_version_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.disable_secret_version({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.disable_secret_version name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.disable_secret_version ::Google::Cloud::SecretManager::V1::DisableSecretVersionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.disable_secret_version({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.disable_secret_version ::Google::Cloud::SecretManager::V1::DisableSecretVersionRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, disable_secret_version_client_stub.call_rpc_count
    end
  end

  def test_enable_secret_version
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::SecretVersion.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    enable_secret_version_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :enable_secret_version, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::EnableSecretVersionRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, enable_secret_version_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.enable_secret_version({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.enable_secret_version name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.enable_secret_version ::Google::Cloud::SecretManager::V1::EnableSecretVersionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.enable_secret_version({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.enable_secret_version ::Google::Cloud::SecretManager::V1::EnableSecretVersionRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, enable_secret_version_client_stub.call_rpc_count
    end
  end

  def test_destroy_secret_version
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::SecretManager::V1::SecretVersion.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    destroy_secret_version_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :destroy_secret_version, name
      assert_kind_of ::Google::Cloud::SecretManager::V1::DestroySecretVersionRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, destroy_secret_version_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.destroy_secret_version({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.destroy_secret_version name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.destroy_secret_version ::Google::Cloud::SecretManager::V1::DestroySecretVersionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.destroy_secret_version({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.destroy_secret_version ::Google::Cloud::SecretManager::V1::DestroySecretVersionRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, destroy_secret_version_client_stub.call_rpc_count
    end
  end

  def test_set_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}

    set_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :set_iam_policy, name
      assert_kind_of ::Google::Iam::V1::SetIamPolicyRequest, request
      assert_equal "hello world", request.resource
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::Policy), request.policy
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, set_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.set_iam_policy({ resource: resource, policy: policy }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.set_iam_policy resource: resource, policy: policy do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.set_iam_policy({ resource: resource, policy: policy }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, set_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_get_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    options = {}

    get_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_iam_policy, name
      assert_kind_of ::Google::Iam::V1::GetIamPolicyRequest, request
      assert_equal "hello world", request.resource
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::GetPolicyOptions), request.options
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_iam_policy({ resource: resource, options: options }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_iam_policy resource: resource, options: options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_iam_policy({ resource: resource, options: options }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_test_iam_permissions
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::TestIamPermissionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :test_iam_permissions, name
      assert_kind_of ::Google::Iam::V1::TestIamPermissionsRequest, request
      assert_equal "hello world", request.resource
      assert_equal ["hello world"], request.permissions
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, test_iam_permissions_client_stub do
      # Create client
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.test_iam_permissions({ resource: resource, permissions: permissions }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.test_iam_permissions resource: resource, permissions: permissions do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.test_iam_permissions({ resource: resource, permissions: permissions }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, test_iam_permissions_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::SecretManager::V1::SecretManagerService::Client::Configuration, config
  end
end
