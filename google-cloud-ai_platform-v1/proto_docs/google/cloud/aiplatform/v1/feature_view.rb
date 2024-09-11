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
    module AIPlatform
      module V1
        # FeatureView is representation of values that the FeatureOnlineStore will
        # serve based on its syncConfig.
        # @!attribute [rw] big_query_source
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureView::BigQuerySource]
        #     Optional. Configures how data is supposed to be extracted from a BigQuery
        #     source to be loaded onto the FeatureOnlineStore.
        # @!attribute [rw] feature_registry_source
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureView::FeatureRegistrySource]
        #     Optional. Configures the features from a Feature Registry source that
        #     need to be loaded onto the FeatureOnlineStore.
        # @!attribute [rw] vertex_rag_source
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureView::VertexRagSource]
        #     Optional. The Vertex RAG Source that the FeatureView is linked to.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of the FeatureView. Format:
        #     `projects/{project}/locations/{location}/featureOnlineStores/{feature_online_store}/featureViews/{feature_view}`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this FeatureView was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this FeatureView was last updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. Used to perform consistent read-modify-write updates. If not set,
        #     a blind "overwrite" update happens.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels with user-defined metadata to organize your
        #     FeatureViews.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information on and examples of labels.
        #     No more than 64 user labels can be associated with one
        #     FeatureOnlineStore(System labels are excluded)." System reserved label keys
        #     are prefixed with "aiplatform.googleapis.com/" and are immutable.
        # @!attribute [rw] sync_config
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureView::SyncConfig]
        #     Configures when data is to be synced/updated for this FeatureView. At the
        #     end of the sync the latest featureValues for each entityId of this
        #     FeatureView are made ready for online serving.
        # @!attribute [rw] index_config
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureView::IndexConfig]
        #     Optional. Configuration for index preparation for vector search. It
        #     contains the required configurations to create an index from source data,
        #     so that approximate nearest neighbor (a.k.a ANN) algorithms search can be
        #     performed during online serving.
        # @!attribute [r] satisfies_pzs
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        # @!attribute [r] satisfies_pzi
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        class FeatureView
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] uri
          #   @return [::String]
          #     Required. The BigQuery view URI that will be materialized on each sync
          #     trigger based on FeatureView.SyncConfig.
          # @!attribute [rw] entity_id_columns
          #   @return [::Array<::String>]
          #     Required. Columns to construct entity_id / row keys.
          class BigQuerySource
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Configuration for Sync. Only one option is set.
          # @!attribute [rw] cron
          #   @return [::String]
          #     Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled
          #     runs. To explicitly set a timezone to the cron tab, apply a prefix in
          #     the cron tab: "CRON_TZ=$\\{IANA_TIME_ZONE}" or "TZ=$\\{IANA_TIME_ZONE}".
          #     The $\\{IANA_TIME_ZONE} may only be a valid string from IANA time zone
          #     database. For example, "CRON_TZ=America/New_York 1 * * * *", or
          #     "TZ=America/New_York 1 * * * *".
          class SyncConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Configuration for vector indexing.
          # @!attribute [rw] tree_ah_config
          #   @return [::Google::Cloud::AIPlatform::V1::FeatureView::IndexConfig::TreeAHConfig]
          #     Optional. Configuration options for the tree-AH algorithm (Shallow tree
          #     + Asymmetric Hashing). Please refer to this paper for more details:
          #     https://arxiv.org/abs/1908.10396
          # @!attribute [rw] brute_force_config
          #   @return [::Google::Cloud::AIPlatform::V1::FeatureView::IndexConfig::BruteForceConfig]
          #     Optional. Configuration options for using brute force search, which
          #     simply implements the standard linear search in the database for each
          #     query. It is primarily meant for benchmarking and to generate the
          #     ground truth for approximate search.
          # @!attribute [rw] embedding_column
          #   @return [::String]
          #     Optional. Column of embedding. This column contains the source data to
          #     create index for vector search. embedding_column must be set when using
          #     vector search.
          # @!attribute [rw] filter_columns
          #   @return [::Array<::String>]
          #     Optional. Columns of features that're used to filter vector search
          #     results.
          # @!attribute [rw] crowding_column
          #   @return [::String]
          #     Optional. Column of crowding. This column contains crowding attribute
          #     which is a constraint on a neighbor list produced by
          #     {::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Client#search_nearest_entities FeatureOnlineStoreService.SearchNearestEntities}
          #     to diversify search results. If
          #     {::Google::Cloud::AIPlatform::V1::NearestNeighborQuery#per_crowding_attribute_neighbor_count NearestNeighborQuery.per_crowding_attribute_neighbor_count}
          #     is set to K in
          #     {::Google::Cloud::AIPlatform::V1::SearchNearestEntitiesRequest SearchNearestEntitiesRequest},
          #     it's guaranteed that no more than K entities of the same crowding
          #     attribute are returned in the response.
          # @!attribute [rw] embedding_dimension
          #   @return [::Integer]
          #     Optional. The number of dimensions of the input embedding.
          # @!attribute [rw] distance_measure_type
          #   @return [::Google::Cloud::AIPlatform::V1::FeatureView::IndexConfig::DistanceMeasureType]
          #     Optional. The distance measure used in nearest neighbor search.
          class IndexConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Configuration options for using brute force search.
            class BruteForceConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Configuration options for the tree-AH algorithm.
            # @!attribute [rw] leaf_node_embedding_count
            #   @return [::Integer]
            #     Optional. Number of embeddings on each leaf node. The default value is
            #     1000 if not set.
            class TreeAHConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The distance measure used in nearest neighbor search.
            module DistanceMeasureType
              # Should not be set.
              DISTANCE_MEASURE_TYPE_UNSPECIFIED = 0

              # Euclidean (L_2) Distance.
              SQUARED_L2_DISTANCE = 1

              # Cosine Distance. Defined as 1 - cosine similarity.
              #
              # We strongly suggest using DOT_PRODUCT_DISTANCE + UNIT_L2_NORM instead
              # of COSINE distance. Our algorithms have been more optimized for
              # DOT_PRODUCT distance which, when combined with UNIT_L2_NORM, is
              # mathematically equivalent to COSINE distance and results in the same
              # ranking.
              COSINE_DISTANCE = 2

              # Dot Product Distance. Defined as a negative of the dot product.
              DOT_PRODUCT_DISTANCE = 3
            end
          end

          # A Feature Registry source for features that need to be synced to Online
          # Store.
          # @!attribute [rw] feature_groups
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::FeatureView::FeatureRegistrySource::FeatureGroup>]
          #     Required. List of features that need to be synced to Online Store.
          # @!attribute [rw] project_number
          #   @return [::Integer]
          #     Optional. The project number of the parent project of the Feature Groups.
          class FeatureRegistrySource
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Features belonging to a single feature group that will be
            # synced to Online Store.
            # @!attribute [rw] feature_group_id
            #   @return [::String]
            #     Required. Identifier of the feature group.
            # @!attribute [rw] feature_ids
            #   @return [::Array<::String>]
            #     Required. Identifiers of features under the feature group.
            class FeatureGroup
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # A Vertex Rag source for features that need to be synced to Online
          # Store.
          # @!attribute [rw] uri
          #   @return [::String]
          #     Required. The BigQuery view/table URI that will be materialized on each
          #     manual sync trigger. The table/view is expected to have the following
          #     columns and types at least:
          #      - `corpus_id` (STRING, NULLABLE/REQUIRED)
          #      - `file_id` (STRING, NULLABLE/REQUIRED)
          #      - `chunk_id` (STRING, NULLABLE/REQUIRED)
          #      - `chunk_data_type` (STRING, NULLABLE/REQUIRED)
          #      - `chunk_data` (STRING, NULLABLE/REQUIRED)
          #      - `embeddings` (FLOAT, REPEATED)
          #      - `file_original_uri` (STRING, NULLABLE/REQUIRED)
          # @!attribute [rw] rag_corpus_id
          #   @return [::Integer]
          #     Optional. The RAG corpus id corresponding to this FeatureView.
          class VertexRagSource
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
