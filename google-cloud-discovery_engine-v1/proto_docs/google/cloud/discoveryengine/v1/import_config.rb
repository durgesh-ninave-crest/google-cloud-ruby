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


module Google
  module Cloud
    module DiscoveryEngine
      module V1
        # Cloud Storage location for input content.
        # @!attribute [rw] input_uris
        #   @return [::Array<::String>]
        #     Required. Cloud Storage URIs to input files. URI can be up to
        #     2000 characters long. URIs can match the full object path (for example,
        #     `gs://bucket/directory/object.json`) or a pattern matching one or more
        #     files, such as `gs://bucket/directory/*.json`.
        #
        #     A request can contain at most 100 files (or 100,000 files if `data_schema`
        #     is `content`). Each file can be up to 2 GB (or 100 MB if `data_schema` is
        #     `content`).
        # @!attribute [rw] data_schema
        #   @return [::String]
        #     The schema to use when parsing the data from the source.
        #
        #     Supported values for document imports:
        #
        #     * `document` (default): One JSON
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document} per line. Each
        #     document must
        #       have a valid {::Google::Cloud::DiscoveryEngine::V1::Document#id Document.id}.
        #     * `content`: Unstructured data (e.g. PDF, HTML). Each file matched by
        #       `input_uris` becomes a document, with the ID set to the first 128
        #       bits of SHA256(URI) encoded as a hex string.
        #     * `custom`: One custom data JSON per row in arbitrary format that conforms
        #       to the defined {::Google::Cloud::DiscoveryEngine::V1::Schema Schema} of the
        #       data store. This can only be used by Gen App Builder.
        #     * `csv`: A CSV file with header conforming to the defined
        #     {::Google::Cloud::DiscoveryEngine::V1::Schema Schema} of the
        #       data store. Each entry after the header is imported as a Document.
        #       This can only be used by Gen App Builder.
        #
        #     Supported values for user even imports:
        #
        #     * `user_event` (default): One JSON
        #     {::Google::Cloud::DiscoveryEngine::V1::UserEvent UserEvent} per line.
        class GcsSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # BigQuery source import data from.
        # @!attribute [rw] partition_date
        #   @return [::Google::Type::Date]
        #     BigQuery time partitioned table's _PARTITIONDATE in YYYY-MM-DD format.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     The project ID (can be project # or ID) that the BigQuery source is in with
        #     a length limit of 128 characters. If not specified, inherits the project
        #     ID from the parent request.
        # @!attribute [rw] dataset_id
        #   @return [::String]
        #     Required. The BigQuery data set to copy the data from with a length limit
        #     of 1,024 characters.
        # @!attribute [rw] table_id
        #   @return [::String]
        #     Required. The BigQuery table to copy the data from with a length limit of
        #     1,024 characters.
        # @!attribute [rw] gcs_staging_dir
        #   @return [::String]
        #     Intermediate Cloud Storage directory used for the import with a length
        #     limit of 2,000 characters. Can be specified if one wants to have the
        #     BigQuery export to a specific Cloud Storage directory.
        # @!attribute [rw] data_schema
        #   @return [::String]
        #     The schema to use when parsing the data from the source.
        #
        #     Supported values for user event imports:
        #
        #     * `user_event` (default): One
        #     {::Google::Cloud::DiscoveryEngine::V1::UserEvent UserEvent} per row.
        #
        #     Supported values for document imports:
        #
        #     * `document` (default): One
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document} format per
        #       row. Each document must have a valid
        #       {::Google::Cloud::DiscoveryEngine::V1::Document#id Document.id} and one of
        #       {::Google::Cloud::DiscoveryEngine::V1::Document#json_data Document.json_data}
        #       or
        #       {::Google::Cloud::DiscoveryEngine::V1::Document#struct_data Document.struct_data}.
        #     * `custom`: One custom data per row in arbitrary format that conforms to
        #       the defined {::Google::Cloud::DiscoveryEngine::V1::Schema Schema} of the data
        #       store. This can only be used by Gen App Builder.
        class BigQuerySource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration of destination for Import related errors.
        # @!attribute [rw] gcs_prefix
        #   @return [::String]
        #     Cloud Storage prefix for import errors. This must be an empty,
        #     existing Cloud Storage directory. Import errors are written to
        #     sharded files in this directory, one per line, as a JSON-encoded
        #     `google.rpc.Status` message.
        class ImportErrorConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the ImportUserEvents request.
        # @!attribute [rw] inline_source
        #   @return [::Google::Cloud::DiscoveryEngine::V1::ImportUserEventsRequest::InlineSource]
        #     The Inline source for the input content for UserEvents.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::DiscoveryEngine::V1::GcsSource]
        #     Cloud Storage location for the input content.
        # @!attribute [rw] bigquery_source
        #   @return [::Google::Cloud::DiscoveryEngine::V1::BigQuerySource]
        #     BigQuery input source.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent DataStore resource name, of the form
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`
        # @!attribute [rw] error_config
        #   @return [::Google::Cloud::DiscoveryEngine::V1::ImportErrorConfig]
        #     The desired location of errors incurred during the Import. Cannot be set
        #     for inline user event imports.
        class ImportUserEventsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The inline source for the input config for ImportUserEvents method.
          # @!attribute [rw] user_events
          #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::UserEvent>]
          #     Required. A list of user events to import. Recommended max of 10k items.
          class InlineSource
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response of the ImportUserEventsRequest. If the long running
        # operation was successful, then this message is returned by the
        # google.longrunning.Operations.response field if the operation was successful.
        # @!attribute [rw] error_samples
        #   @return [::Array<::Google::Rpc::Status>]
        #     A sample of errors encountered while processing the request.
        # @!attribute [rw] error_config
        #   @return [::Google::Cloud::DiscoveryEngine::V1::ImportErrorConfig]
        #     Echoes the destination for the complete errors if this field was set in
        #     the request.
        # @!attribute [rw] joined_events_count
        #   @return [::Integer]
        #     Count of user events imported with complete existing Documents.
        # @!attribute [rw] unjoined_events_count
        #   @return [::Integer]
        #     Count of user events imported, but with Document information not found
        #     in the existing Branch.
        class ImportUserEventsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the Import operation. This is
        # returned by the google.longrunning.Operation.metadata field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        # @!attribute [rw] success_count
        #   @return [::Integer]
        #     Count of entries that were processed successfully.
        # @!attribute [rw] failure_count
        #   @return [::Integer]
        #     Count of entries that encountered errors while processing.
        class ImportUserEventsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the ImportDocuments operation. This is
        # returned by the google.longrunning.Operation.metadata field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        # @!attribute [rw] success_count
        #   @return [::Integer]
        #     Count of entries that were processed successfully.
        # @!attribute [rw] failure_count
        #   @return [::Integer]
        #     Count of entries that encountered errors while processing.
        class ImportDocumentsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for Import methods.
        # @!attribute [rw] inline_source
        #   @return [::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest::InlineSource]
        #     The Inline source for the input content for documents.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::DiscoveryEngine::V1::GcsSource]
        #     Cloud Storage location for the input content.
        # @!attribute [rw] bigquery_source
        #   @return [::Google::Cloud::DiscoveryEngine::V1::BigQuerySource]
        #     BigQuery input source.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent branch resource name, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
        #     Requires create/update permission.
        # @!attribute [rw] error_config
        #   @return [::Google::Cloud::DiscoveryEngine::V1::ImportErrorConfig]
        #     The desired location of errors incurred during the Import.
        # @!attribute [rw] reconciliation_mode
        #   @return [::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest::ReconciliationMode]
        #     The mode of reconciliation between existing documents and the documents to
        #     be imported. Defaults to
        #     {::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest::ReconciliationMode::INCREMENTAL ReconciliationMode.INCREMENTAL}.
        # @!attribute [rw] auto_generate_ids
        #   @return [::Boolean]
        #     Whether to automatically generate IDs for the documents if absent.
        #
        #     If set to `true`,
        #     {::Google::Cloud::DiscoveryEngine::V1::Document#id Document.id}s are
        #     automatically generated based on the hash of the payload, where IDs may not
        #     be consistent during multiple imports. In which case
        #     {::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest::ReconciliationMode::FULL ReconciliationMode.FULL}
        #     is highly recommended to avoid duplicate contents. If unset or set to
        #     `false`, {::Google::Cloud::DiscoveryEngine::V1::Document#id Document.id}s have
        #     to be specified using
        #     {::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest#id_field id_field},
        #     otherwise, documents without IDs fail to be imported.
        #
        #     Only set this field when using
        #     {::Google::Cloud::DiscoveryEngine::V1::GcsSource GcsSource} or
        #     {::Google::Cloud::DiscoveryEngine::V1::BigQuerySource BigQuerySource}, and when
        #     {::Google::Cloud::DiscoveryEngine::V1::GcsSource#data_schema GcsSource.data_schema}
        #     or
        #     {::Google::Cloud::DiscoveryEngine::V1::BigQuerySource#data_schema BigQuerySource.data_schema}
        #     is `custom` or `csv`. Otherwise, an INVALID_ARGUMENT error is thrown.
        # @!attribute [rw] id_field
        #   @return [::String]
        #     The field in the Cloud Storage and BigQuery sources that indicates the
        #     unique IDs of the documents.
        #
        #     For {::Google::Cloud::DiscoveryEngine::V1::GcsSource GcsSource} it is the key of
        #     the JSON field. For instance, `my_id` for JSON `{"my_id": "some_uuid"}`.
        #     For {::Google::Cloud::DiscoveryEngine::V1::BigQuerySource BigQuerySource} it is
        #     the column name of the BigQuery table where the unique ids are stored.
        #
        #     The values of the JSON field or the BigQuery column are used as the
        #     {::Google::Cloud::DiscoveryEngine::V1::Document#id Document.id}s. The JSON field
        #     or the BigQuery column must be of string type, and the values must be set
        #     as valid strings conform to [RFC-1034](https://tools.ietf.org/html/rfc1034)
        #     with 1-63 characters. Otherwise, documents without valid IDs fail to be
        #     imported.
        #
        #     Only set this field when using
        #     {::Google::Cloud::DiscoveryEngine::V1::GcsSource GcsSource} or
        #     {::Google::Cloud::DiscoveryEngine::V1::BigQuerySource BigQuerySource}, and when
        #     {::Google::Cloud::DiscoveryEngine::V1::GcsSource#data_schema GcsSource.data_schema}
        #     or
        #     {::Google::Cloud::DiscoveryEngine::V1::BigQuerySource#data_schema BigQuerySource.data_schema}
        #     is `custom`. And only set this field when
        #     {::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest#auto_generate_ids auto_generate_ids}
        #     is unset or set as `false`. Otherwise, an INVALID_ARGUMENT error is thrown.
        #
        #     If it is unset, a default value `_id` is used when importing from the
        #     allowed data sources.
        class ImportDocumentsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The inline source for the input config for ImportDocuments method.
          # @!attribute [rw] documents
          #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::Document>]
          #     Required. A list of documents to update/create. Each document must have a
          #     valid {::Google::Cloud::DiscoveryEngine::V1::Document#id Document.id}.
          #     Recommended max of 100 items.
          class InlineSource
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Indicates how imported documents are reconciled with the existing documents
          # created or imported before.
          module ReconciliationMode
            # Defaults to `INCREMENTAL`.
            RECONCILIATION_MODE_UNSPECIFIED = 0

            # Inserts new documents or updates existing documents.
            INCREMENTAL = 1

            # Calculates diff and replaces the entire document dataset. Existing
            # documents may be deleted if they are not present in the source location.
            FULL = 2
          end
        end

        # Response of the
        # {::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest ImportDocumentsRequest}.
        # If the long running operation is done, then this message is returned by the
        # google.longrunning.Operations.response field if the operation was successful.
        # @!attribute [rw] error_samples
        #   @return [::Array<::Google::Rpc::Status>]
        #     A sample of errors encountered while processing the request.
        # @!attribute [rw] error_config
        #   @return [::Google::Cloud::DiscoveryEngine::V1::ImportErrorConfig]
        #     Echoes the destination for the complete errors in the request if set.
        class ImportDocumentsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
