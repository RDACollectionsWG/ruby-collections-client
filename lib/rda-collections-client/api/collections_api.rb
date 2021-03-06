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
  class CollectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of all collections provided by this service. A successful request returns an HTTP 200 response code with a CollectionResultSet object in the response body.
    # This request returns a list of the collections provided by this service.  This may be a complete list, or if the service features include support for pagination, the cursors in the response may be used to iterate backwards and forwards through pages of partial results. Query parameters may be used to supply filtering criteria for the response. When combining filters of different types, the boolean AND will be used. When combining multiple instances of filters of the same type, the boolean OR will be used.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :f_model_type Filter response by the modelType property of the collection.
    # @option opts [String] :f_member_type Filter response by the data type of contained collection member. A collection will meet this requirement if any of its members are of the requested type.
    # @option opts [String] :f_ownership Filter response by the ownership property of the collection
    # @option opts [String] :cursor cursor for iterating a prior response to this query
    # @return [CollectionResultSet]
    def collections_get(opts = {})
      data, _status_code, _headers = collections_get_with_http_info(opts)
      return data
    end

    # Get a list of all collections provided by this service. A successful request returns an HTTP 200 response code with a CollectionResultSet object in the response body.
    # This request returns a list of the collections provided by this service.  This may be a complete list, or if the service features include support for pagination, the cursors in the response may be used to iterate backwards and forwards through pages of partial results. Query parameters may be used to supply filtering criteria for the response. When combining filters of different types, the boolean AND will be used. When combining multiple instances of filters of the same type, the boolean OR will be used.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :f_model_type Filter response by the modelType property of the collection.
    # @option opts [String] :f_member_type Filter response by the data type of contained collection member. A collection will meet this requirement if any of its members are of the requested type.
    # @option opts [String] :f_ownership Filter response by the ownership property of the collection
    # @option opts [String] :cursor cursor for iterating a prior response to this query
    # @return [Array<(CollectionResultSet, Fixnum, Hash)>] CollectionResultSet data, response status code and response headers
    def collections_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CollectionsApi.collections_get ..."
      end
      # resource path
      local_var_path = "/collections".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'f_modelType'] = opts[:'f_model_type'] if !opts[:'f_model_type'].nil?
      query_params[:'f_memberType'] = opts[:'f_member_type'] if !opts[:'f_member_type'].nil?
      query_params[:'f_ownership'] = opts[:'f_ownership'] if !opts[:'f_ownership'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

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
        :return_type => 'CollectionResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the capabilities of this collection. A successful request returns an HTTP 200 response code with a CollectionCapabilities object in the response body.
    # This request returns the capabilities metadata for the collection identified by the supplied id. The collection capabilities describe the actions and operations that are available for this collection.
    # @param id Identifier for the collection
    # @param [Hash] opts the optional parameters
    # @return [CollectionCapabilities]
    def collections_id_capabilities_get(id, opts = {})
      data, _status_code, _headers = collections_id_capabilities_get_with_http_info(id, opts)
      return data
    end

    # Get the capabilities of this collection. A successful request returns an HTTP 200 response code with a CollectionCapabilities object in the response body.
    # This request returns the capabilities metadata for the collection identified by the supplied id. The collection capabilities describe the actions and operations that are available for this collection.
    # @param id Identifier for the collection
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionCapabilities, Fixnum, Hash)>] CollectionCapabilities data, response status code and response headers
    def collections_id_capabilities_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CollectionsApi.collections_id_capabilities_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CollectionsApi.collections_id_capabilities_get" if id.nil?
      # resource path
      local_var_path = "/collections/{id}/capabilities".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CollectionCapabilities')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_id_capabilities_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a collection. A successful request returns an HTTP 200 response code with an  empty response body.
    # This request deletes the collection idenified by the provided id from the collection store. The response may differ depending upon whether or not the service features include support for synchronous actions.
    # @param id identifier for the collection
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def collections_id_delete(id, opts = {})
      collections_id_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a collection. A successful request returns an HTTP 200 response code with an  empty response body.
    # This request deletes the collection idenified by the provided id from the collection store. The response may differ depending upon whether or not the service features include support for synchronous actions.
    # @param id identifier for the collection
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def collections_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CollectionsApi.collections_id_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CollectionsApi.collections_id_delete" if id.nil?
      # resource path
      local_var_path = "/collections/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the properties of a specific collection. A successful request returns an HTTP 200 response code with the requested CollectionObject in the response body.
    # This request returns the Collection Object Properties for the collection identified by the provided id.
    # @param id Identifier for the collection
    # @param [Hash] opts the optional parameters
    # @return [CollectionObject]
    def collections_id_get(id, opts = {})
      data, _status_code, _headers = collections_id_get_with_http_info(id, opts)
      return data
    end

    # Get the properties of a specific collection. A successful request returns an HTTP 200 response code with the requested CollectionObject in the response body.
    # This request returns the Collection Object Properties for the collection identified by the provided id.
    # @param id Identifier for the collection
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionObject, Fixnum, Hash)>] CollectionObject data, response status code and response headers
    def collections_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CollectionsApi.collections_id_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CollectionsApi.collections_id_get" if id.nil?
      # resource path
      local_var_path = "/collections/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CollectionObject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find member objects in a collection which match the supplied member object. A successful request returns an HTTP 200 response code with a CollectionResultSet object in the response body.
    # This request accepts as input the complete or partial properties of a member object and returns a ResultSet containing any objects which were deemed to 'match' the supplied properties among the members of the identified collection. If the service features include support for pagination, a cursor may be supplied to iterate backwards and forwards through paged results from prior executions of this query.
    # @param id identifier for the collection
    # @param member_properties the member item properties to use when matching
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor If the service supports pagination and a cursor was returned in a prior  response to this query, this can be used to requeste a particular page of the  results.
    # @return [MemberResultSet]
    def collections_id_ops_find_match_post(id, member_properties, opts = {})
      data, _status_code, _headers = collections_id_ops_find_match_post_with_http_info(id, member_properties, opts)
      return data
    end

    # Find member objects in a collection which match the supplied member object. A successful request returns an HTTP 200 response code with a CollectionResultSet object in the response body.
    # This request accepts as input the complete or partial properties of a member object and returns a ResultSet containing any objects which were deemed to &#39;match&#39; the supplied properties among the members of the identified collection. If the service features include support for pagination, a cursor may be supplied to iterate backwards and forwards through paged results from prior executions of this query.
    # @param id identifier for the collection
    # @param member_properties the member item properties to use when matching
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor If the service supports pagination and a cursor was returned in a prior  response to this query, this can be used to requeste a particular page of the  results.
    # @return [Array<(MemberResultSet, Fixnum, Hash)>] MemberResultSet data, response status code and response headers
    def collections_id_ops_find_match_post_with_http_info(id, member_properties, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CollectionsApi.collections_id_ops_find_match_post ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CollectionsApi.collections_id_ops_find_match_post" if id.nil?
      # verify the required parameter 'member_properties' is set
      fail ArgumentError, "Missing the required parameter 'member_properties' when calling CollectionsApi.collections_id_ops_find_match_post" if member_properties.nil?
      # resource path
      local_var_path = "/collections/{id}/ops/findMatch".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

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
      post_body = @api_client.object_to_http_body(member_properties)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MemberResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_id_ops_find_match_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Flattens the collection. A successful request returns  an HTTP 200 response code with a MemberResultSet object in the response body.
    # This request returns a resultset which is a flattened representation of a collection of collections into a single collection.
    # @param id Identifier for the collection to be flattened
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results.
    # @return [MemberResultSet]
    def collections_id_ops_flatten_get(id, opts = {})
      data, _status_code, _headers = collections_id_ops_flatten_get_with_http_info(id, opts)
      return data
    end

    # Flattens the collection. A successful request returns  an HTTP 200 response code with a MemberResultSet object in the response body.
    # This request returns a resultset which is a flattened representation of a collection of collections into a single collection.
    # @param id Identifier for the collection to be flattened
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results.
    # @return [Array<(MemberResultSet, Fixnum, Hash)>] MemberResultSet data, response status code and response headers
    def collections_id_ops_flatten_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CollectionsApi.collections_id_ops_flatten_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CollectionsApi.collections_id_ops_flatten_get" if id.nil?
      # resource path
      local_var_path = "/collections/{id}/ops/flatten".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

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
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MemberResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_id_ops_flatten_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the members at the intersection of two collections. A successful request returns  an HTTP 200 response code with a CollectionResultSet object in the response body.
    # This request returns a resultset containing the members at the intersection of two collections. If the service features include support for pagination, a cursor may be supplied to iterate backwards and forwards through paged results from prior executions of this query. The response may be an empty set.
    # @param id Identifier for the first collection in the operation
    # @param other_id Identifier for the second collection in the operation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results.
    # @return [MemberResultSet]
    def collections_id_ops_intersection_other_id_get(id, other_id, opts = {})
      data, _status_code, _headers = collections_id_ops_intersection_other_id_get_with_http_info(id, other_id, opts)
      return data
    end

    # Retrieve the members at the intersection of two collections. A successful request returns  an HTTP 200 response code with a CollectionResultSet object in the response body.
    # This request returns a resultset containing the members at the intersection of two collections. If the service features include support for pagination, a cursor may be supplied to iterate backwards and forwards through paged results from prior executions of this query. The response may be an empty set.
    # @param id Identifier for the first collection in the operation
    # @param other_id Identifier for the second collection in the operation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results.
    # @return [Array<(MemberResultSet, Fixnum, Hash)>] MemberResultSet data, response status code and response headers
    def collections_id_ops_intersection_other_id_get_with_http_info(id, other_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CollectionsApi.collections_id_ops_intersection_other_id_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CollectionsApi.collections_id_ops_intersection_other_id_get" if id.nil?
      # verify the required parameter 'other_id' is set
      fail ArgumentError, "Missing the required parameter 'other_id' when calling CollectionsApi.collections_id_ops_intersection_other_id_get" if other_id.nil?
      # resource path
      local_var_path = "/collections/{id}/ops/intersection/{otherId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'otherId' + '}', other_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

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
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MemberResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_id_ops_intersection_other_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the union of two collections. A successful request returns  an HTTP 200 response code with a CollectionResultSet object in the response body.
    # This request returns a resultset containing the members at the union of two collections. If the service features include support for pagination, a cursor may be supplied to iterate backwards and forwards through paged results from prior executions of this query. The response may be an empty set.
    # @param id Identifier for the first collection in the operation
    # @param other_id Identifier for the second collection in the operation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results.
    # @return [MemberResultSet]
    def collections_id_ops_union_other_id_get(id, other_id, opts = {})
      data, _status_code, _headers = collections_id_ops_union_other_id_get_with_http_info(id, other_id, opts)
      return data
    end

    # Retrieve the union of two collections. A successful request returns  an HTTP 200 response code with a CollectionResultSet object in the response body.
    # This request returns a resultset containing the members at the union of two collections. If the service features include support for pagination, a cursor may be supplied to iterate backwards and forwards through paged results from prior executions of this query. The response may be an empty set.
    # @param id Identifier for the first collection in the operation
    # @param other_id Identifier for the second collection in the operation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results.
    # @return [Array<(MemberResultSet, Fixnum, Hash)>] MemberResultSet data, response status code and response headers
    def collections_id_ops_union_other_id_get_with_http_info(id, other_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CollectionsApi.collections_id_ops_union_other_id_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CollectionsApi.collections_id_ops_union_other_id_get" if id.nil?
      # verify the required parameter 'other_id' is set
      fail ArgumentError, "Missing the required parameter 'other_id' when calling CollectionsApi.collections_id_ops_union_other_id_get" if other_id.nil?
      # resource path
      local_var_path = "/collections/{id}/ops/union/{otherId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'otherId' + '}', other_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

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
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MemberResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_id_ops_union_other_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the properties of a Collection Object. A successful request returns an HTTP 200 response code with the updated CollectionObject in the response body.
    # This request updates the properties of the collection identified by the provided id. The updated collection properties must be supplied in the body of the request. The response may differ depending upon whether or not the  service features include support for syncrhonous actions.
    # @param id Persistent identifier for the collection
    # @param content The properties of the collection to be updated.
    # @param [Hash] opts the optional parameters
    # @return [CollectionObject]
    def collections_id_put(id, content, opts = {})
      data, _status_code, _headers = collections_id_put_with_http_info(id, content, opts)
      return data
    end

    # Update the properties of a Collection Object. A successful request returns an HTTP 200 response code with the updated CollectionObject in the response body.
    # This request updates the properties of the collection identified by the provided id. The updated collection properties must be supplied in the body of the request. The response may differ depending upon whether or not the  service features include support for syncrhonous actions.
    # @param id Persistent identifier for the collection
    # @param content The properties of the collection to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionObject, Fixnum, Hash)>] CollectionObject data, response status code and response headers
    def collections_id_put_with_http_info(id, content, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CollectionsApi.collections_id_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CollectionsApi.collections_id_put" if id.nil?
      # verify the required parameter 'content' is set
      fail ArgumentError, "Missing the required parameter 'content' when calling CollectionsApi.collections_id_put" if content.nil?
      # resource path
      local_var_path = "/collections/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(content)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CollectionObject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create one or more new collections. Successful requests will return an HTTP 201 response code with an array of the newly created CollectionObject(s) in the response body.
    # This request adds one or more new collections to the collection store. The Collection Objects to be created  must be supplied in the body of the request. 
    # @param content The properties of the collection.
    # @param [Hash] opts the optional parameters
    # @return [Array<CollectionObject>]
    def collections_post(content, opts = {})
      data, _status_code, _headers = collections_post_with_http_info(content, opts)
      return data
    end

    # Create one or more new collections. Successful requests will return an HTTP 201 response code with an array of the newly created CollectionObject(s) in the response body.
    # This request adds one or more new collections to the collection store. The Collection Objects to be created  must be supplied in the body of the request. 
    # @param content The properties of the collection.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CollectionObject>, Fixnum, Hash)>] Array<CollectionObject> data, response status code and response headers
    def collections_post_with_http_info(content, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CollectionsApi.collections_post ..."
      end
      # verify the required parameter 'content' is set
      fail ArgumentError, "Missing the required parameter 'content' when calling CollectionsApi.collections_post" if content.nil?
      # resource path
      local_var_path = "/collections".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(content)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<CollectionObject>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
