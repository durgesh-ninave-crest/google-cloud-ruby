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


module Google
  module Cloud
    module AIPlatform
      module V1
        # A template that specifies runtime configurations such as machine type,
        # runtime version, network configurations, etc.
        # Multiple runtimes can be created from a runtime template.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the NotebookRuntimeTemplate.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the NotebookRuntimeTemplate.
        #     The name can be up to 128 characters long and can consist of any UTF-8
        #     characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     The description of the NotebookRuntimeTemplate.
        # @!attribute [r] is_default
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Boolean]
        #     Output only. Deprecated: This field has no behavior. Use
        #     notebook_runtime_type = 'ONE_CLICK' instead.
        #
        #     The default template to use if not specified.
        # @!attribute [rw] machine_spec
        #   @return [::Google::Cloud::AIPlatform::V1::MachineSpec]
        #     Optional. Immutable. The specification of a single machine for the
        #     template.
        # @!attribute [rw] data_persistent_disk_spec
        #   @return [::Google::Cloud::AIPlatform::V1::PersistentDiskSpec]
        #     Optional. The specification of [persistent
        #     disk][https://cloud.google.com/compute/docs/disks/persistent-disks]
        #     attached to the runtime as data disk storage.
        # @!attribute [rw] network_spec
        #   @return [::Google::Cloud::AIPlatform::V1::NetworkSpec]
        #     Optional. Network spec.
        # @!attribute [rw] service_account
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::String]
        #     Deprecated: This field is ignored and the "Vertex AI Notebook Service
        #     Account"
        #     (service-PROJECT_NUMBER@gcp-sa-aiplatform-vm.iam.gserviceaccount.com) is
        #     used for the runtime workload identity.
        #     See
        #     https://cloud.google.com/iam/docs/service-agents#vertex-ai-notebook-service-account
        #     for more details.
        #     For NotebookExecutionJob, use NotebookExecutionJob.service_account instead.
        #
        #     The service account that the runtime workload runs as.
        #     You can use any service account within the same project, but you
        #     must have the service account user permission to use the instance.
        #
        #     If not specified, the [Compute Engine default service
        #     account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account)
        #     is used.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Used to perform consistent read-modify-write updates. If not set, a blind
        #     "overwrite" update happens.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels with user-defined metadata to organize the
        #     NotebookRuntimeTemplates.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        # @!attribute [rw] idle_shutdown_config
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookIdleShutdownConfig]
        #     The idle shutdown configuration of NotebookRuntimeTemplate. This config
        #     will only be set when idle shutdown is enabled.
        # @!attribute [rw] euc_config
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookEucConfig]
        #     EUC configuration of the NotebookRuntimeTemplate.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this NotebookRuntimeTemplate was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this NotebookRuntimeTemplate was most recently
        #     updated.
        # @!attribute [rw] notebook_runtime_type
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookRuntimeType]
        #     Optional. Immutable. The type of the notebook runtime template.
        # @!attribute [rw] shielded_vm_config
        #   @return [::Google::Cloud::AIPlatform::V1::ShieldedVmConfig]
        #     Optional. Immutable. Runtime Shielded VM spec.
        # @!attribute [rw] network_tags
        #   @return [::Array<::String>]
        #     Optional. The Compute Engine tags to add to runtime (see [Tagging
        #     instances](https://cloud.google.com/vpc/docs/add-remove-network-tags)).
        # @!attribute [rw] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Customer-managed encryption key spec for the notebook runtime.
        # @!attribute [rw] software_config
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookSoftwareConfig]
        #     Optional. The notebook software configuration of the notebook runtime.
        class NotebookRuntimeTemplate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A runtime is a virtual machine allocated to a particular user for a
        # particular Notebook file on temporary basis with lifetime limited to 24
        # hours.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the NotebookRuntime.
        # @!attribute [rw] runtime_user
        #   @return [::String]
        #     Required. The user email of the NotebookRuntime.
        # @!attribute [r] notebook_runtime_template_ref
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookRuntimeTemplateRef]
        #     Output only. The pointer to NotebookRuntimeTemplate this NotebookRuntime is
        #     created from.
        # @!attribute [r] proxy_uri
        #   @return [::String]
        #     Output only. The proxy endpoint used to access the NotebookRuntime.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this NotebookRuntime was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this NotebookRuntime was most recently updated.
        # @!attribute [r] health_state
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookRuntime::HealthState]
        #     Output only. The health state of the NotebookRuntime.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the NotebookRuntime.
        #     The name can be up to 128 characters long and can consist of any UTF-8
        #     characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     The description of the NotebookRuntime.
        # @!attribute [r] service_account
        #   @return [::String]
        #     Output only. Deprecated: This field is no longer used and the "Vertex AI
        #     Notebook Service Account"
        #     (service-PROJECT_NUMBER@gcp-sa-aiplatform-vm.iam.gserviceaccount.com) is
        #     used for the runtime workload identity.
        #     See
        #     https://cloud.google.com/iam/docs/service-agents#vertex-ai-notebook-service-account
        #     for more details.
        #
        #     The service account that the NotebookRuntime workload runs as.
        # @!attribute [r] runtime_state
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookRuntime::RuntimeState]
        #     Output only. The runtime (instance) state of the NotebookRuntime.
        # @!attribute [r] is_upgradable
        #   @return [::Boolean]
        #     Output only. Whether NotebookRuntime is upgradable.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels with user-defined metadata to organize your
        #     NotebookRuntime.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #     No more than 64 user labels can be associated with one NotebookRuntime
        #     (System labels are excluded).
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        #     System reserved label keys are prefixed with "aiplatform.googleapis.com/"
        #     and are immutable. Following system labels exist for NotebookRuntime:
        #
        #     * "aiplatform.googleapis.com/notebook_runtime_gce_instance_id": output
        #     only, its value is the Compute Engine instance id.
        #     * "aiplatform.googleapis.com/colab_enterprise_entry_service": its value is
        #     either "bigquery" or "vertex"; if absent, it should be "vertex". This is to
        #     describe the entry service, either BigQuery or Vertex.
        # @!attribute [r] expiration_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this NotebookRuntime will be expired:
        #     1. System Predefined NotebookRuntime: 24 hours after creation. After
        #     expiration, system predifined runtime will be deleted.
        #     2. User created NotebookRuntime: 6 months after last upgrade. After
        #     expiration, user created runtime will be stopped and allowed for upgrade.
        # @!attribute [r] version
        #   @return [::String]
        #     Output only. The VM os image version of NotebookRuntime.
        # @!attribute [r] notebook_runtime_type
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookRuntimeType]
        #     Output only. The type of the notebook runtime.
        # @!attribute [r] machine_spec
        #   @return [::Google::Cloud::AIPlatform::V1::MachineSpec]
        #     Output only. The specification of a single machine used by the notebook
        #     runtime.
        # @!attribute [r] data_persistent_disk_spec
        #   @return [::Google::Cloud::AIPlatform::V1::PersistentDiskSpec]
        #     Output only. The specification of [persistent
        #     disk][https://cloud.google.com/compute/docs/disks/persistent-disks]
        #     attached to the notebook runtime as data disk storage.
        # @!attribute [r] network_spec
        #   @return [::Google::Cloud::AIPlatform::V1::NetworkSpec]
        #     Output only. Network spec of the notebook runtime.
        # @!attribute [r] idle_shutdown_config
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookIdleShutdownConfig]
        #     Output only. The idle shutdown configuration of the notebook runtime.
        # @!attribute [r] euc_config
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookEucConfig]
        #     Output only. EUC configuration of the notebook runtime.
        # @!attribute [r] shielded_vm_config
        #   @return [::Google::Cloud::AIPlatform::V1::ShieldedVmConfig]
        #     Output only. Runtime Shielded VM spec.
        # @!attribute [rw] network_tags
        #   @return [::Array<::String>]
        #     Optional. The Compute Engine tags to add to runtime (see [Tagging
        #     instances](https://cloud.google.com/vpc/docs/add-remove-network-tags)).
        # @!attribute [r] software_config
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookSoftwareConfig]
        #     Output only. Software config of the notebook runtime.
        # @!attribute [r] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Output only. Customer-managed encryption key spec for the notebook runtime.
        # @!attribute [r] satisfies_pzs
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        # @!attribute [r] satisfies_pzi
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        class NotebookRuntime
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The substate of the NotebookRuntime to display health information.
          module HealthState
            # Unspecified health state.
            HEALTH_STATE_UNSPECIFIED = 0

            # NotebookRuntime is in healthy state. Applies to ACTIVE state.
            HEALTHY = 1

            # NotebookRuntime is in unhealthy state. Applies to ACTIVE state.
            UNHEALTHY = 2
          end

          # The substate of the NotebookRuntime to display state of runtime.
          # The resource of NotebookRuntime is in ACTIVE state for these sub state.
          module RuntimeState
            # Unspecified runtime state.
            RUNTIME_STATE_UNSPECIFIED = 0

            # NotebookRuntime is in running state.
            RUNNING = 1

            # NotebookRuntime is in starting state.
            BEING_STARTED = 2

            # NotebookRuntime is in stopping state.
            BEING_STOPPED = 3

            # NotebookRuntime is in stopped state.
            STOPPED = 4

            # NotebookRuntime is in upgrading state. It is in the middle of upgrading
            # process.
            BEING_UPGRADED = 5

            # NotebookRuntime was unable to start/stop properly.
            ERROR = 100

            # NotebookRuntime is in invalid state. Cannot be recovered.
            INVALID = 101
          end
        end

        # Represents a notebook runtime type.
        module NotebookRuntimeType
          # Unspecified notebook runtime type, NotebookRuntimeType will default to
          # USER_DEFINED.
          NOTEBOOK_RUNTIME_TYPE_UNSPECIFIED = 0

          # runtime or template with coustomized configurations from user.
          USER_DEFINED = 1

          # runtime or template with system defined configurations.
          ONE_CLICK = 2
        end
      end
    end
  end
end
