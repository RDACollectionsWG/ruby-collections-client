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

require "uri"

module CollectionsClient
  class ServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets the service-level features. A successful request returns an HTTP 200 response code with the ServiceFeatures object in the response body.
    # This request returns the service-level features. Examples of service-level features might include whether or not the service supports assignment of PIDs for collection members, whether it supports pagination and cursors, whether it enforces  access controls, etc.
    # @param [Hash] opts the optional parameters
    # @return [ServiceFeatures]
    def features_get(opts = {})
      data, _status_code, _headers = features_get_with_http_info(opts)
      return data
    end

    # Gets the service-level features. A successful request returns an HTTP 200 response code with the ServiceFeatures object in the response body.
    # This request returns the service-level features. Examples of service-level features might include whether or not the service supports assignment of PIDs for collection members, whether it supports pagination and cursors, whether it enforces  access controls, etc.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceFeatures, Fixnum, Hash)>] ServiceFeatures data, response status code and response headers
    def features_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceApi.features_get ..."
      end
      # resource path
      local_var_path = "/features".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ServiceFeatures')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#features_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
