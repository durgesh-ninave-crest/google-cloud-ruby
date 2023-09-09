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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/errors"
require "google/cloud/workflows/executions/v1beta/executions_pb"

module Google
  module Cloud
    module Workflows
      module Executions
        module V1beta
          module Executions
            ##
            # Client for the Executions service.
            #
            # Executions is used to start and manage running instances of
            # [Workflows][google.cloud.workflows.v1beta.Workflow] called executions.
            #
            class Client
              include Paths

              # @private
              attr_reader :executions_stub

              ##
              # Configure the Executions Client class.
              #
              # See {::Google::Cloud::Workflows::Executions::V1beta::Executions::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all Executions clients
              #   ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "Workflows", "Executions", "V1beta"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the Executions Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Workflows::Executions::V1beta::Executions::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # Create a new Executions client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Executions client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # These require statements are intentionally placed here to initialize
                # the gRPC module only when it's required.
                # See https://github.com/googleapis/toolkit/issues/446
                require "gapic/grpc"
                require "google/cloud/workflows/executions/v1beta/executions_services_pb"

                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end
                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @executions_stub = ::Gapic::ServiceStub.new(
                  ::Google::Cloud::Workflows::Executions::V1beta::Executions::Stub,
                  credentials:  credentials,
                  endpoint:     @config.endpoint,
                  channel_args: @config.channel_args,
                  interceptors: @config.interceptors,
                  channel_pool_config: @config.channel_pool
                )
              end

              # Service calls

              ##
              # Returns a list of executions which belong to the workflow with
              # the given name. The method returns executions of all workflow
              # revisions. Returned executions are ordered by their start time (newest
              # first).
              #
              # @overload list_executions(request, options = nil)
              #   Pass arguments to `list_executions` via a request object, either of type
              #   {::Google::Cloud::Workflows::Executions::V1beta::ListExecutionsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Workflows::Executions::V1beta::ListExecutionsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload list_executions(parent: nil, page_size: nil, page_token: nil, view: nil)
              #   Pass arguments to `list_executions` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. Name of the workflow for which the executions should be listed.
              #     Format: projects/\\{project}/locations/\\{location}/workflows/\\{workflow}
              #   @param page_size [::Integer]
              #     Maximum number of executions to return per call.
              #     Max supported value depends on the selected Execution view: it's 10000 for
              #     BASIC and 100 for FULL. The default value used if the field is not
              #     specified is 100, regardless of the selected view. Values greater than
              #     the max value will be coerced down to it.
              #   @param page_token [::String]
              #     A page token, received from a previous `ListExecutions` call.
              #     Provide this to retrieve the subsequent page.
              #
              #     When paginating, all other parameters provided to `ListExecutions` must
              #     match the call that provided the page token.
              #   @param view [::Google::Cloud::Workflows::Executions::V1beta::ExecutionView]
              #     Optional. A view defining which fields should be filled in the returned executions.
              #     The API will default to the BASIC view.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Workflows::Executions::V1beta::Execution>]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Gapic::PagedEnumerable<::Google::Cloud::Workflows::Executions::V1beta::Execution>]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/workflows/executions/v1beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Workflows::Executions::V1beta::ListExecutionsRequest.new
              #
              #   # Call the list_executions method.
              #   result = client.list_executions request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Cloud::Workflows::Executions::V1beta::Execution.
              #     p item
              #   end
              #
              def list_executions request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Workflows::Executions::V1beta::ListExecutionsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.list_executions.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Workflows::Executions::V1beta::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.parent
                  header_params["parent"] = request.parent
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.list_executions.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.list_executions.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @executions_stub.call_rpc :list_executions, request, options: options do |response, operation|
                  response = ::Gapic::PagedEnumerable.new @executions_stub, :list_executions, request, response, operation, options
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Creates a new execution using the latest revision of the given workflow.
              #
              # @overload create_execution(request, options = nil)
              #   Pass arguments to `create_execution` via a request object, either of type
              #   {::Google::Cloud::Workflows::Executions::V1beta::CreateExecutionRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Workflows::Executions::V1beta::CreateExecutionRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload create_execution(parent: nil, execution: nil)
              #   Pass arguments to `create_execution` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. Name of the workflow for which an execution should be created.
              #     Format: projects/\\{project}/locations/\\{location}/workflows/\\{workflow}
              #     The latest revision of the workflow will be used.
              #   @param execution [::Google::Cloud::Workflows::Executions::V1beta::Execution, ::Hash]
              #     Required. Execution to be created.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Cloud::Workflows::Executions::V1beta::Execution]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Cloud::Workflows::Executions::V1beta::Execution]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/workflows/executions/v1beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Workflows::Executions::V1beta::CreateExecutionRequest.new
              #
              #   # Call the create_execution method.
              #   result = client.create_execution request
              #
              #   # The returned object is of type Google::Cloud::Workflows::Executions::V1beta::Execution.
              #   p result
              #
              def create_execution request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Workflows::Executions::V1beta::CreateExecutionRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.create_execution.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Workflows::Executions::V1beta::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.parent
                  header_params["parent"] = request.parent
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.create_execution.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.create_execution.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @executions_stub.call_rpc :create_execution, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Returns an execution of the given name.
              #
              # @overload get_execution(request, options = nil)
              #   Pass arguments to `get_execution` via a request object, either of type
              #   {::Google::Cloud::Workflows::Executions::V1beta::GetExecutionRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Workflows::Executions::V1beta::GetExecutionRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload get_execution(name: nil, view: nil)
              #   Pass arguments to `get_execution` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. Name of the execution to be retrieved.
              #     Format:
              #     projects/\\{project}/locations/\\{location}/workflows/\\{workflow}/executions/\\{execution}
              #   @param view [::Google::Cloud::Workflows::Executions::V1beta::ExecutionView]
              #     Optional. A view defining which fields should be filled in the returned execution.
              #     The API will default to the FULL view.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Cloud::Workflows::Executions::V1beta::Execution]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Cloud::Workflows::Executions::V1beta::Execution]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/workflows/executions/v1beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Workflows::Executions::V1beta::GetExecutionRequest.new
              #
              #   # Call the get_execution method.
              #   result = client.get_execution request
              #
              #   # The returned object is of type Google::Cloud::Workflows::Executions::V1beta::Execution.
              #   p result
              #
              def get_execution request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Workflows::Executions::V1beta::GetExecutionRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.get_execution.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Workflows::Executions::V1beta::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.name
                  header_params["name"] = request.name
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.get_execution.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.get_execution.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @executions_stub.call_rpc :get_execution, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Cancels an execution of the given name.
              #
              # @overload cancel_execution(request, options = nil)
              #   Pass arguments to `cancel_execution` via a request object, either of type
              #   {::Google::Cloud::Workflows::Executions::V1beta::CancelExecutionRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Workflows::Executions::V1beta::CancelExecutionRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload cancel_execution(name: nil)
              #   Pass arguments to `cancel_execution` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. Name of the execution to be cancelled.
              #     Format:
              #     projects/\\{project}/locations/\\{location}/workflows/\\{workflow}/executions/\\{execution}
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Cloud::Workflows::Executions::V1beta::Execution]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Cloud::Workflows::Executions::V1beta::Execution]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/workflows/executions/v1beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Workflows::Executions::V1beta::CancelExecutionRequest.new
              #
              #   # Call the cancel_execution method.
              #   result = client.cancel_execution request
              #
              #   # The returned object is of type Google::Cloud::Workflows::Executions::V1beta::Execution.
              #   p result
              #
              def cancel_execution request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Workflows::Executions::V1beta::CancelExecutionRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.cancel_execution.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Workflows::Executions::V1beta::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.name
                  header_params["name"] = request.name
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.cancel_execution.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.cancel_execution.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @executions_stub.call_rpc :cancel_execution, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the Executions API.
              #
              # This class represents the configuration for Executions,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Workflows::Executions::V1beta::Executions::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # list_executions to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_executions.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_executions.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"workflowexecutions.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
              #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] channel_args
              #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
              #   `GRPC::Core::Channel` object is provided as the credential.
              #   @return [::Hash]
              # @!attribute [rw] interceptors
              #   An array of interceptors that are run before calls are executed.
              #   @return [::Array<::GRPC::ClientInterceptor>]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional gRPC headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              #
              class Configuration
                extend ::Gapic::Config

                DEFAULT_ENDPOINT = "workflowexecutions.googleapis.com"

                config_attr :endpoint,      DEFAULT_ENDPOINT, ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
                config_attr :interceptors,  nil, ::Array, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration for the channel pool
                # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
                #
                def channel_pool
                  @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
                end

                ##
                # Configuration RPC class for the Executions API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `list_executions`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_executions
                  ##
                  # RPC-specific configuration for `create_execution`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :create_execution
                  ##
                  # RPC-specific configuration for `get_execution`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_execution
                  ##
                  # RPC-specific configuration for `cancel_execution`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :cancel_execution

                  # @private
                  def initialize parent_rpcs = nil
                    list_executions_config = parent_rpcs.list_executions if parent_rpcs.respond_to? :list_executions
                    @list_executions = ::Gapic::Config::Method.new list_executions_config
                    create_execution_config = parent_rpcs.create_execution if parent_rpcs.respond_to? :create_execution
                    @create_execution = ::Gapic::Config::Method.new create_execution_config
                    get_execution_config = parent_rpcs.get_execution if parent_rpcs.respond_to? :get_execution
                    @get_execution = ::Gapic::Config::Method.new get_execution_config
                    cancel_execution_config = parent_rpcs.cancel_execution if parent_rpcs.respond_to? :cancel_execution
                    @cancel_execution = ::Gapic::Config::Method.new cancel_execution_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
