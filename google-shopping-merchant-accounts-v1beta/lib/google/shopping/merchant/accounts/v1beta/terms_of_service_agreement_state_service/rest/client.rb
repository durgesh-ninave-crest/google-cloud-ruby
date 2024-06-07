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

require "google/cloud/errors"
require "google/shopping/merchant/accounts/v1beta/termsofserviceagreementstate_pb"
require "google/shopping/merchant/accounts/v1beta/terms_of_service_agreement_state_service/rest/service_stub"

module Google
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          module TermsOfServiceAgreementStateService
            module Rest
              ##
              # REST client for the TermsOfServiceAgreementStateService service.
              #
              # Service to support `TermsOfServiceAgreementState` API.
              #
              class Client
                # @private
                API_VERSION = ""

                # @private
                DEFAULT_ENDPOINT_TEMPLATE = "merchantapi.$UNIVERSE_DOMAIN$"

                include Paths

                # @private
                attr_reader :terms_of_service_agreement_state_service_stub

                ##
                # Configure the TermsOfServiceAgreementStateService Client class.
                #
                # See {::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client::Configuration}
                # for a description of the configuration fields.
                #
                # @example
                #
                #   # Modify the configuration for all TermsOfServiceAgreementStateService clients
                #   ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client.configure do |config|
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
                    namespace = ["Google", "Shopping", "Merchant", "Accounts", "V1beta"]
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
                # Configure the TermsOfServiceAgreementStateService Client instance.
                #
                # The configuration is set to the derived mode, meaning that values can be changed,
                # but structural changes (adding new fields, etc.) are not allowed. Structural changes
                # should be made on {Client.configure}.
                #
                # See {::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client::Configuration}
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
                # The effective universe domain
                #
                # @return [String]
                #
                def universe_domain
                  @terms_of_service_agreement_state_service_stub.universe_domain
                end

                ##
                # Create a new TermsOfServiceAgreementStateService REST client object.
                #
                # @example
                #
                #   # Create a client using the default configuration
                #   client = ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client.new
                #
                #   # Create a client using a custom configuration
                #   client = ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client.new do |config|
                #     config.timeout = 10.0
                #   end
                #
                # @yield [config] Configure the TermsOfServiceAgreementStateService client.
                # @yieldparam config [Client::Configuration]
                #
                def initialize
                  # Create the configuration object
                  @config = Configuration.new Client.configure

                  # Yield the configuration if needed
                  yield @config if block_given?

                  # Create credentials
                  credentials = @config.credentials
                  # Use self-signed JWT if the endpoint is unchanged from default,
                  # but only if the default endpoint does not have a region prefix.
                  enable_self_signed_jwt = @config.endpoint.nil? ||
                                           (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                           !@config.endpoint.split(".").first.include?("-"))
                  credentials ||= Credentials.default scope: @config.scope,
                                                      enable_self_signed_jwt: enable_self_signed_jwt
                  if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                    credentials = Credentials.new credentials, scope: @config.scope
                  end

                  @quota_project_id = @config.quota_project
                  @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                  @terms_of_service_agreement_state_service_stub = ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::ServiceStub.new(
                    endpoint: @config.endpoint,
                    endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                    universe_domain: @config.universe_domain,
                    credentials: credentials
                  )
                end

                # Service calls

                ##
                # Returns the state of a terms of service agreement.
                #
                # @overload get_terms_of_service_agreement_state(request, options = nil)
                #   Pass arguments to `get_terms_of_service_agreement_state` via a request object, either of type
                #   {::Google::Shopping::Merchant::Accounts::V1beta::GetTermsOfServiceAgreementStateRequest} or an equivalent Hash.
                #
                #   @param request [::Google::Shopping::Merchant::Accounts::V1beta::GetTermsOfServiceAgreementStateRequest, ::Hash]
                #     A request object representing the call parameters. Required. To specify no
                #     parameters, or to keep all the default parameter values, pass an empty Hash.
                #   @param options [::Gapic::CallOptions, ::Hash]
                #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @overload get_terms_of_service_agreement_state(name: nil)
                #   Pass arguments to `get_terms_of_service_agreement_state` via keyword arguments. Note that at
                #   least one keyword argument is required. To specify no parameters, or to keep all
                #   the default parameter values, pass an empty Hash as a request object (see above).
                #
                #   @param name [::String]
                #     Required. The resource name of the terms of service version.
                #     Format: `accounts/{account}/termsOfServiceAgreementState/{identifier}`
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementState]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementState]
                #
                # @raise [::Google::Cloud::Error] if the REST call is aborted.
                #
                # @example Basic example
                #   require "google/shopping/merchant/accounts/v1beta"
                #
                #   # Create a client object. The client can be reused for multiple calls.
                #   client = Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client.new
                #
                #   # Create a request. To set request fields, pass in keyword arguments.
                #   request = Google::Shopping::Merchant::Accounts::V1beta::GetTermsOfServiceAgreementStateRequest.new
                #
                #   # Call the get_terms_of_service_agreement_state method.
                #   result = client.get_terms_of_service_agreement_state request
                #
                #   # The returned object is of type Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementState.
                #   p result
                #
                def get_terms_of_service_agreement_state request, options = nil
                  raise ::ArgumentError, "request must be provided" if request.nil?

                  request = ::Gapic::Protobuf.coerce request, to: ::Google::Shopping::Merchant::Accounts::V1beta::GetTermsOfServiceAgreementStateRequest

                  # Converts hash and nil to an options object
                  options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                  # Customize the options with defaults
                  call_metadata = @config.rpcs.get_terms_of_service_agreement_state.metadata.to_h

                  # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                  call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                    lib_name: @config.lib_name, lib_version: @config.lib_version,
                    gapic_version: ::Google::Shopping::Merchant::Accounts::V1beta::VERSION,
                    transports_version_send: [:rest]

                  call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                  call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                  options.apply_defaults timeout:      @config.rpcs.get_terms_of_service_agreement_state.timeout,
                                         metadata:     call_metadata,
                                         retry_policy: @config.rpcs.get_terms_of_service_agreement_state.retry_policy

                  options.apply_defaults timeout:      @config.timeout,
                                         metadata:     @config.metadata,
                                         retry_policy: @config.retry_policy

                  @terms_of_service_agreement_state_service_stub.get_terms_of_service_agreement_state request, options do |result, operation|
                    yield result, operation if block_given?
                    return result
                  end
                rescue ::Gapic::Rest::Error => e
                  raise ::Google::Cloud::Error.from_error(e)
                end

                ##
                # Retrieves the state of the agreement for the application terms of service.
                #
                # @overload retrieve_for_application_terms_of_service_agreement_state(request, options = nil)
                #   Pass arguments to `retrieve_for_application_terms_of_service_agreement_state` via a request object, either of type
                #   {::Google::Shopping::Merchant::Accounts::V1beta::RetrieveForApplicationTermsOfServiceAgreementStateRequest} or an equivalent Hash.
                #
                #   @param request [::Google::Shopping::Merchant::Accounts::V1beta::RetrieveForApplicationTermsOfServiceAgreementStateRequest, ::Hash]
                #     A request object representing the call parameters. Required. To specify no
                #     parameters, or to keep all the default parameter values, pass an empty Hash.
                #   @param options [::Gapic::CallOptions, ::Hash]
                #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @overload retrieve_for_application_terms_of_service_agreement_state(parent: nil)
                #   Pass arguments to `retrieve_for_application_terms_of_service_agreement_state` via keyword arguments. Note that at
                #   least one keyword argument is required. To specify no parameters, or to keep all
                #   the default parameter values, pass an empty Hash as a request object (see above).
                #
                #   @param parent [::String]
                #     Required. The account for which to get a TermsOfServiceAgreementState
                #     Format: `accounts/{account}`
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementState]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementState]
                #
                # @raise [::Google::Cloud::Error] if the REST call is aborted.
                #
                # @example Basic example
                #   require "google/shopping/merchant/accounts/v1beta"
                #
                #   # Create a client object. The client can be reused for multiple calls.
                #   client = Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client.new
                #
                #   # Create a request. To set request fields, pass in keyword arguments.
                #   request = Google::Shopping::Merchant::Accounts::V1beta::RetrieveForApplicationTermsOfServiceAgreementStateRequest.new
                #
                #   # Call the retrieve_for_application_terms_of_service_agreement_state method.
                #   result = client.retrieve_for_application_terms_of_service_agreement_state request
                #
                #   # The returned object is of type Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementState.
                #   p result
                #
                def retrieve_for_application_terms_of_service_agreement_state request, options = nil
                  raise ::ArgumentError, "request must be provided" if request.nil?

                  request = ::Gapic::Protobuf.coerce request, to: ::Google::Shopping::Merchant::Accounts::V1beta::RetrieveForApplicationTermsOfServiceAgreementStateRequest

                  # Converts hash and nil to an options object
                  options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                  # Customize the options with defaults
                  call_metadata = @config.rpcs.retrieve_for_application_terms_of_service_agreement_state.metadata.to_h

                  # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                  call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                    lib_name: @config.lib_name, lib_version: @config.lib_version,
                    gapic_version: ::Google::Shopping::Merchant::Accounts::V1beta::VERSION,
                    transports_version_send: [:rest]

                  call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                  call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                  options.apply_defaults timeout:      @config.rpcs.retrieve_for_application_terms_of_service_agreement_state.timeout,
                                         metadata:     call_metadata,
                                         retry_policy: @config.rpcs.retrieve_for_application_terms_of_service_agreement_state.retry_policy

                  options.apply_defaults timeout:      @config.timeout,
                                         metadata:     @config.metadata,
                                         retry_policy: @config.retry_policy

                  @terms_of_service_agreement_state_service_stub.retrieve_for_application_terms_of_service_agreement_state request, options do |result, operation|
                    yield result, operation if block_given?
                    return result
                  end
                rescue ::Gapic::Rest::Error => e
                  raise ::Google::Cloud::Error.from_error(e)
                end

                ##
                # Configuration class for the TermsOfServiceAgreementStateService REST API.
                #
                # This class represents the configuration for TermsOfServiceAgreementStateService REST,
                # providing control over timeouts, retry behavior, logging, transport
                # parameters, and other low-level controls. Certain parameters can also be
                # applied individually to specific RPCs. See
                # {::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client::Configuration::Rpcs}
                # for a list of RPCs that can be configured independently.
                #
                # Configuration can be applied globally to all clients, or to a single client
                # on construction.
                #
                # @example
                #
                #   # Modify the global config, setting the timeout for
                #   # get_terms_of_service_agreement_state to 20 seconds,
                #   # and all remaining timeouts to 10 seconds.
                #   ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client.configure do |config|
                #     config.timeout = 10.0
                #     config.rpcs.get_terms_of_service_agreement_state.timeout = 20.0
                #   end
                #
                #   # Apply the above configuration only to a new client.
                #   client = ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client.new do |config|
                #     config.timeout = 10.0
                #     config.rpcs.get_terms_of_service_agreement_state.timeout = 20.0
                #   end
                #
                # @!attribute [rw] endpoint
                #   A custom service endpoint, as a hostname or hostname:port. The default is
                #   nil, indicating to use the default endpoint in the current universe domain.
                #   @return [::String,nil]
                # @!attribute [rw] credentials
                #   Credentials to send with calls. You may provide any of the following types:
                #    *  (`String`) The path to a service account key file in JSON format
                #    *  (`Hash`) A service account key as a Hash
                #    *  (`Google::Auth::Credentials`) A googleauth credentials object
                #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
                #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
                #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
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
                # @!attribute [rw] timeout
                #   The call timeout in seconds.
                #   @return [::Numeric]
                # @!attribute [rw] metadata
                #   Additional headers to be sent with the call.
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
                # @!attribute [rw] universe_domain
                #   The universe domain within which to make requests. This determines the
                #   default endpoint URL. The default value of nil uses the environment
                #   universe (usually the default "googleapis.com" universe).
                #   @return [::String,nil]
                #
                class Configuration
                  extend ::Gapic::Config

                  # @private
                  # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                  DEFAULT_ENDPOINT = "merchantapi.googleapis.com"

                  config_attr :endpoint,      nil, ::String, nil
                  config_attr :credentials,   nil do |value|
                    allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                    allowed.any? { |klass| klass === value }
                  end
                  config_attr :scope,         nil, ::String, ::Array, nil
                  config_attr :lib_name,      nil, ::String, nil
                  config_attr :lib_version,   nil, ::String, nil
                  config_attr :timeout,       nil, ::Numeric, nil
                  config_attr :metadata,      nil, ::Hash, nil
                  config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                  config_attr :quota_project, nil, ::String, nil
                  config_attr :universe_domain, nil, ::String, nil

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
                  # Configuration RPC class for the TermsOfServiceAgreementStateService API.
                  #
                  # Includes fields providing the configuration for each RPC in this service.
                  # Each configuration object is of type `Gapic::Config::Method` and includes
                  # the following configuration fields:
                  #
                  #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                  #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
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
                    # RPC-specific configuration for `get_terms_of_service_agreement_state`
                    # @return [::Gapic::Config::Method]
                    #
                    attr_reader :get_terms_of_service_agreement_state
                    ##
                    # RPC-specific configuration for `retrieve_for_application_terms_of_service_agreement_state`
                    # @return [::Gapic::Config::Method]
                    #
                    attr_reader :retrieve_for_application_terms_of_service_agreement_state

                    # @private
                    def initialize parent_rpcs = nil
                      get_terms_of_service_agreement_state_config = parent_rpcs.get_terms_of_service_agreement_state if parent_rpcs.respond_to? :get_terms_of_service_agreement_state
                      @get_terms_of_service_agreement_state = ::Gapic::Config::Method.new get_terms_of_service_agreement_state_config
                      retrieve_for_application_terms_of_service_agreement_state_config = parent_rpcs.retrieve_for_application_terms_of_service_agreement_state if parent_rpcs.respond_to? :retrieve_for_application_terms_of_service_agreement_state
                      @retrieve_for_application_terms_of_service_agreement_state = ::Gapic::Config::Method.new retrieve_for_application_terms_of_service_agreement_state_config

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
end
