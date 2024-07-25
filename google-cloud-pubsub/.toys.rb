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

toys_version! ">= 0.15.3"

if ENV["RUBY_COMMON_TOOLS"]
  common_tools_dir = File.expand_path ENV["RUBY_COMMON_TOOLS"]
  load File.join(common_tools_dir, "toys", "gapic")
else
  load_git remote: "https://github.com/googleapis/ruby-common-tools.git",
           path: "toys/gapic",
           update: true
end

tool "samples" do
  tool "gen-protos" do
    include :exec, e: true
    include :gems

    def run
      Dir.chdir context_directory
      gem "grpc-tools", "~> 1.65"
      Dir.chdir "samples/acceptance" do
        cmd = [
          "grpc_tools_ruby_protoc",
          "--ruby_out", "../utilities",
          "-I", "data",
          "us-states.proto"
        ]
        exec cmd
      end
    end
  end
end
