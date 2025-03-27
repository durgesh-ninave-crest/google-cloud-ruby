# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/vertex_rag_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/content_pb'
require 'google/cloud/aiplatform/v1/tool_pb'
require 'google/cloud/aiplatform/v1/vertex_rag_data_pb'


descriptor_data = "\n3google/cloud/aiplatform/v1/vertex_rag_service.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a(google/cloud/aiplatform/v1/content.proto\x1a%google/cloud/aiplatform/v1/tool.proto\x1a\x30google/cloud/aiplatform/v1/vertex_rag_data.proto\"{\n\x08RagQuery\x12\x13\n\x04text\x18\x01 \x01(\tB\x03\xe0\x41\x01H\x00\x12Q\n\x14rag_retrieval_config\x18\x06 \x01(\x0b\x32..google.cloud.aiplatform.v1.RagRetrievalConfigB\x03\xe0\x41\x01\x42\x07\n\x05query\"\xb4\x04\n\x17RetrieveContextsRequest\x12^\n\x10vertex_rag_store\x18\x02 \x01(\x0b\x32\x42.google.cloud.aiplatform.v1.RetrieveContextsRequest.VertexRagStoreH\x00\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x38\n\x05query\x18\x03 \x01(\x0b\x32$.google.cloud.aiplatform.v1.RagQueryB\x03\xe0\x41\x02\x1a\xb4\x02\n\x0eVertexRagStore\x12j\n\rrag_resources\x18\x03 \x03(\x0b\x32N.google.cloud.aiplatform.v1.RetrieveContextsRequest.VertexRagStore.RagResourceB\x03\xe0\x41\x01\x12-\n\x19vector_distance_threshold\x18\x02 \x01(\x01\x42\x05\x18\x01\xe0\x41\x01H\x00\x88\x01\x01\x1ai\n\x0bRagResource\x12?\n\nrag_corpus\x18\x01 \x01(\tB+\xe0\x41\x01\xfa\x41%\n#aiplatform.googleapis.com/RagCorpus\x12\x19\n\x0crag_file_ids\x18\x02 \x03(\tB\x03\xe0\x41\x01\x42\x1c\n\x1a_vector_distance_thresholdB\r\n\x0b\x64\x61ta_source\"\xee\x01\n\x0bRagContexts\x12\x41\n\x08\x63ontexts\x18\x01 \x03(\x0b\x32/.google.cloud.aiplatform.v1.RagContexts.Context\x1a\x9b\x01\n\x07\x43ontext\x12\x12\n\nsource_uri\x18\x01 \x01(\t\x12\x1b\n\x13source_display_name\x18\x05 \x01(\t\x12\x0c\n\x04text\x18\x02 \x01(\t\x12\x12\n\x05score\x18\x06 \x01(\x01H\x00\x88\x01\x01\x12\x33\n\x05\x63hunk\x18\x07 \x01(\x0b\x32$.google.cloud.aiplatform.v1.RagChunkB\x08\n\x06_score\"U\n\x18RetrieveContextsResponse\x12\x39\n\x08\x63ontexts\x18\x01 \x01(\x0b\x32\'.google.cloud.aiplatform.v1.RagContexts\"\xee\x02\n\x14\x41ugmentPromptRequest\x12K\n\x10vertex_rag_store\x18\x04 \x01(\x0b\x32*.google.cloud.aiplatform.v1.VertexRagStoreB\x03\xe0\x41\x01H\x00\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12:\n\x08\x63ontents\x18\x02 \x03(\x0b\x32#.google.cloud.aiplatform.v1.ContentB\x03\xe0\x41\x01\x12J\n\x05model\x18\x03 \x01(\x0b\x32\x36.google.cloud.aiplatform.v1.AugmentPromptRequest.ModelB\x03\xe0\x41\x01\x1a\x37\n\x05Model\x12\x12\n\x05model\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rmodel_version\x18\x02 \x01(\tB\x03\xe0\x41\x01\x42\r\n\x0b\x64\x61ta_source\"\x87\x01\n\x15\x41ugmentPromptResponse\x12=\n\x10\x61ugmented_prompt\x18\x01 \x03(\x0b\x32#.google.cloud.aiplatform.v1.Content\x12/\n\x05\x66\x61\x63ts\x18\x02 \x03(\x0b\x32 .google.cloud.aiplatform.v1.Fact\"\xe2\x02\n\x19\x43orroborateContentRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12>\n\x07\x63ontent\x18\x02 \x01(\x0b\x32#.google.cloud.aiplatform.v1.ContentB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12\x34\n\x05\x66\x61\x63ts\x18\x03 \x03(\x0b\x32 .google.cloud.aiplatform.v1.FactB\x03\xe0\x41\x01\x12Y\n\nparameters\x18\x04 \x01(\x0b\x32@.google.cloud.aiplatform.v1.CorroborateContentRequest.ParametersB\x03\xe0\x41\x01\x1a-\n\nParameters\x12\x1f\n\x12\x63itation_threshold\x18\x01 \x01(\x01\x42\x03\xe0\x41\x01\x42\n\n\x08_content\"\x89\x01\n\x1a\x43orroborateContentResponse\x12 \n\x13\x63orroboration_score\x18\x01 \x01(\x02H\x00\x88\x01\x01\x12\x31\n\x06\x63laims\x18\x02 \x03(\x0b\x32!.google.cloud.aiplatform.v1.ClaimB\x16\n\x14_corroboration_score\"\x96\x02\n\x04\x46\x61\x63t\x12\x12\n\x05query\x18\x01 \x01(\tH\x00\x88\x01\x01\x12\x12\n\x05title\x18\x02 \x01(\tH\x01\x88\x01\x01\x12\x10\n\x03uri\x18\x03 \x01(\tH\x02\x88\x01\x01\x12\x14\n\x07summary\x18\x04 \x01(\tH\x03\x88\x01\x01\x12 \n\x0fvector_distance\x18\x05 \x01(\x01\x42\x02\x18\x01H\x04\x88\x01\x01\x12\x12\n\x05score\x18\x06 \x01(\x01H\x05\x88\x01\x01\x12\x38\n\x05\x63hunk\x18\x07 \x01(\x0b\x32$.google.cloud.aiplatform.v1.RagChunkH\x06\x88\x01\x01\x42\x08\n\x06_queryB\x08\n\x06_titleB\x06\n\x04_uriB\n\n\x08_summaryB\x12\n\x10_vector_distanceB\x08\n\x06_scoreB\x08\n\x06_chunk\"\x8b\x01\n\x05\x43laim\x12\x18\n\x0bstart_index\x18\x01 \x01(\x05H\x00\x88\x01\x01\x12\x16\n\tend_index\x18\x02 \x01(\x05H\x01\x88\x01\x01\x12\x14\n\x0c\x66\x61\x63t_indexes\x18\x03 \x03(\x05\x12\x12\n\x05score\x18\x04 \x01(\x02H\x02\x88\x01\x01\x42\x0e\n\x0c_start_indexB\x0c\n\n_end_indexB\x08\n\x06_score2\xe6\x05\n\x10VertexRagService\x12\xcd\x01\n\x10RetrieveContexts\x12\x33.google.cloud.aiplatform.v1.RetrieveContextsRequest\x1a\x34.google.cloud.aiplatform.v1.RetrieveContextsResponse\"N\xda\x41\x0cparent,query\x82\xd3\xe4\x93\x02\x39\"4/v1/{parent=projects/*/locations/*}:retrieveContexts:\x01*\x12\xd2\x01\n\rAugmentPrompt\x12\x30.google.cloud.aiplatform.v1.AugmentPromptRequest\x1a\x31.google.cloud.aiplatform.v1.AugmentPromptResponse\"\\\xda\x41\x1dparent,model,vertex_rag_store\x82\xd3\xe4\x93\x02\x36\"1/v1/{parent=projects/*/locations/*}:augmentPrompt:\x01*\x12\xdd\x01\n\x12\x43orroborateContent\x12\x35.google.cloud.aiplatform.v1.CorroborateContentRequest\x1a\x36.google.cloud.aiplatform.v1.CorroborateContentResponse\"X\xda\x41\x14parent,content,facts\x82\xd3\xe4\x93\x02;\"6/v1/{parent=projects/*/locations/*}:corroborateContent:\x01*\x1aM\xca\x41\x19\x61iplatform.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xd3\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x15VertexRagServiceProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.aiplatform.v1.RagRetrievalConfig", "google/cloud/aiplatform/v1/tool.proto"],
    ["google.cloud.aiplatform.v1.RagChunk", "google/cloud/aiplatform/v1/vertex_rag_data.proto"],
    ["google.cloud.aiplatform.v1.Content", "google/cloud/aiplatform/v1/content.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module AIPlatform
      module V1
        RagQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RagQuery").msgclass
        RetrieveContextsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RetrieveContextsRequest").msgclass
        RetrieveContextsRequest::VertexRagStore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RetrieveContextsRequest.VertexRagStore").msgclass
        RetrieveContextsRequest::VertexRagStore::RagResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RetrieveContextsRequest.VertexRagStore.RagResource").msgclass
        RagContexts = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RagContexts").msgclass
        RagContexts::Context = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RagContexts.Context").msgclass
        RetrieveContextsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RetrieveContextsResponse").msgclass
        AugmentPromptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.AugmentPromptRequest").msgclass
        AugmentPromptRequest::Model = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.AugmentPromptRequest.Model").msgclass
        AugmentPromptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.AugmentPromptResponse").msgclass
        CorroborateContentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CorroborateContentRequest").msgclass
        CorroborateContentRequest::Parameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CorroborateContentRequest.Parameters").msgclass
        CorroborateContentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CorroborateContentResponse").msgclass
        Fact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Fact").msgclass
        Claim = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Claim").msgclass
      end
    end
  end
end
