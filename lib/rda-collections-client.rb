=begin
#RDA Collections API

#The RDA Collections API Recommendation is a unified model and interface specification for CRUD operations on data collections, with particular observance of persistent identification and typing aspects. The recommendation allows building collections within diverse domains and then sharing or expanding them across disciplines.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

# Common files
require 'rda-collections-client/api_client'
require 'rda-collections-client/api_error'
require 'rda-collections-client/version'
require 'rda-collections-client/configuration'

# Models
require 'rda-collections-client/models/collection_capabilities'
require 'rda-collections-client/models/collection_item_mapping_metadata'
require 'rda-collections-client/models/collection_object'
require 'rda-collections-client/models/collection_operations'
require 'rda-collections-client/models/collection_properties'
require 'rda-collections-client/models/collection_result_set'
require 'rda-collections-client/models/error'
require 'rda-collections-client/models/member_item'
require 'rda-collections-client/models/member_result_set'
require 'rda-collections-client/models/service_features'

# APIs
require 'rda-collections-client/api/collections_api'
require 'rda-collections-client/api/members_api'
require 'rda-collections-client/api/service_api'

module CollectionsClient
  class << self
    # Customize default settings for the SDK using block.
    #   CollectionsClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
