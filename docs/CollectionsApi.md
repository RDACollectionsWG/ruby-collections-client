# CollectionsClient::CollectionsApi

All URIs are relative to *https://api.example.org/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**collections_get**](CollectionsApi.md#collections_get) | **GET** /collections | Get a list of all collections
[**collections_id_capabilities_get**](CollectionsApi.md#collections_id_capabilities_get) | **GET** /collections/{id}/capabilities | Get the capabilities of this collection
[**collections_id_delete**](CollectionsApi.md#collections_id_delete) | **DELETE** /collections/{id} | Delete a collection
[**collections_id_get**](CollectionsApi.md#collections_id_get) | **GET** /collections/{id} | Get the properties of a specific collection.
[**collections_id_ops_find_match_post**](CollectionsApi.md#collections_id_ops_find_match_post) | **POST** /collections/{id}/ops/findMatch | Find member objects in a collection which match the supplied member object
[**collections_id_ops_flatten_get**](CollectionsApi.md#collections_id_ops_flatten_get) | **GET** /collections/{id}/ops/flatten | Flattens the collection
[**collections_id_ops_intersection_other_id_get**](CollectionsApi.md#collections_id_ops_intersection_other_id_get) | **GET** /collections/{id}/ops/intersection/{otherId} | Retrieve the members at the intersection of two collections
[**collections_id_ops_union_other_id_get**](CollectionsApi.md#collections_id_ops_union_other_id_get) | **GET** /collections/{id}/ops/union/{otherId} | Retrieve the union of two collections
[**collections_id_put**](CollectionsApi.md#collections_id_put) | **PUT** /collections/{id} | Update the properties of a Collection Object
[**collections_post**](CollectionsApi.md#collections_post) | **POST** /collections | Create a new collection.


# **collections_get**
> CollectionResultSet collections_get(opts)

Get a list of all collections

This request returns a list of the collections provided by this service.  This may be a complete list, or if the service features include support for pagination, the cursors in the response may be used to iterate backwards and forwards through pages of partial results. Query parameters may be used to supply filtering criteria for the response. When combining filters of different types, the boolean AND will be used. When combining multiple instances of filters of the same type, the boolean OR will be used.

### Example
```ruby
# load the gem
require 'rda-collections-client'

api_instance = CollectionsClient::CollectionsApi.new

opts = { 
  f_model_type: "f_model_type_example", # String | Filter response by the modelType property of the collection.
  f_member_type: "f_member_type_example", # String | Filter response by the data type of contained collection member. A collection will meet this requirement if any of its members are of the requested type.
  f_ownership: "f_ownership_example" # String | Filter response by the ownership property of the collection
}

begin
  #Get a list of all collections
  result = api_instance.collections_get(opts)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **f_model_type** | **String**| Filter response by the modelType property of the collection. | [optional] 
 **f_member_type** | **String**| Filter response by the data type of contained collection member. A collection will meet this requirement if any of its members are of the requested type. | [optional] 
 **f_ownership** | **String**| Filter response by the ownership property of the collection | [optional] 

### Return type

[**CollectionResultSet**](CollectionResultSet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_capabilities_get**
> CollectionCapabilities collections_id_capabilities_get(id)

Get the capabilities of this collection

This request returns the capabilities metadata for the collection identified by the supplied id. The collection capabilities describe the actions and operations that are available for this collection.

### Example
```ruby
# load the gem
require 'rda-collections-client'

api_instance = CollectionsClient::CollectionsApi.new

id = "id_example" # String | Identifier for the collection


begin
  #Get the capabilities of this collection
  result = api_instance.collections_id_capabilities_get(id)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_id_capabilities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the collection | 

### Return type

[**CollectionCapabilities**](CollectionCapabilities.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_delete**
> collections_id_delete(id)

Delete a collection

This request deletes the collection idenified by the provided id from the collection store. The response may differ depending upon whether or not the service features include support for synchronous actions.

### Example
```ruby
# load the gem
require 'rda-collections-client'
# setup authorization
CollectionsClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CollectionsClient::CollectionsApi.new

id = "id_example" # String | identifier for the collection


begin
  #Delete a collection
  api_instance.collections_id_delete(id)
rescue CollectionsClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| identifier for the collection | 

### Return type

nil (empty response body)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_get**
> CollectionObject collections_id_get(id)

Get the properties of a specific collection.

This request returns the Collection Object Properties for the collection identified by the provided id.

### Example
```ruby
# load the gem
require 'rda-collections-client'

api_instance = CollectionsClient::CollectionsApi.new

id = "id_example" # String | Identifier for the collection


begin
  #Get the properties of a specific collection.
  result = api_instance.collections_id_get(id)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the collection | 

### Return type

[**CollectionObject**](CollectionObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_ops_find_match_post**
> MemberResultSet collections_id_ops_find_match_post(id, member_properties, opts)

Find member objects in a collection which match the supplied member object

This request accepts as input the complete or partial properties of a member object and returns a ResultSet containing any objects which were deemed to 'match' the supplied properties among the members of the identified collection. If the service features include support for pagination, a cursor may be supplied to iterate backwards and forwards through paged results from prior executions of this query.

### Example
```ruby
# load the gem
require 'rda-collections-client'
# setup authorization
CollectionsClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CollectionsClient::CollectionsApi.new

id = "id_example" # String | identifier for the collection

member_properties = CollectionsClient::MemberItem.new # MemberItem | the member item properties to use when matching

opts = { 
  cursor: "cursor_example" # String | If the service supports pagination and a cursor was returned in a prior  response to this query, this can be used to requeste a particular page of the  results.
}

begin
  #Find member objects in a collection which match the supplied member object
  result = api_instance.collections_id_ops_find_match_post(id, member_properties, opts)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_id_ops_find_match_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| identifier for the collection | 
 **member_properties** | [**MemberItem**](MemberItem.md)| the member item properties to use when matching | 
 **cursor** | **String**| If the service supports pagination and a cursor was returned in a prior  response to this query, this can be used to requeste a particular page of the  results. | [optional] 

### Return type

[**MemberResultSet**](MemberResultSet.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_ops_flatten_get**
> MemberResultSet collections_id_ops_flatten_get(id, opts)

Flattens the collection

This request returns a resultset which is a flattened representation of a collection of collections into a single collection.

### Example
```ruby
# load the gem
require 'rda-collections-client'
# setup authorization
CollectionsClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CollectionsClient::CollectionsApi.new

id = "id_example" # String | Identifier for the collection to be flattened

opts = { 
  cursor: "cursor_example" # String | If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results.
}

begin
  #Flattens the collection
  result = api_instance.collections_id_ops_flatten_get(id, opts)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_id_ops_flatten_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the collection to be flattened | 
 **cursor** | **String**| If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results. | [optional] 

### Return type

[**MemberResultSet**](MemberResultSet.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_ops_intersection_other_id_get**
> MemberResultSet collections_id_ops_intersection_other_id_get(id, other_id, opts)

Retrieve the members at the intersection of two collections

This request returns a resultset containing the members at the intersection of two collections. If the service features include support for pagination, a cursor may be supplied to iterate backwards and forwards through paged results from prior executions of this query. The response may be an empty set.

### Example
```ruby
# load the gem
require 'rda-collections-client'
# setup authorization
CollectionsClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CollectionsClient::CollectionsApi.new

id = "id_example" # String | Identifier for the first collection in the operation

other_id = "other_id_example" # String | Identifier for the second collection in the operation

opts = { 
  cursor: "cursor_example" # String | If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results.
}

begin
  #Retrieve the members at the intersection of two collections
  result = api_instance.collections_id_ops_intersection_other_id_get(id, other_id, opts)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_id_ops_intersection_other_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the first collection in the operation | 
 **other_id** | **String**| Identifier for the second collection in the operation | 
 **cursor** | **String**| If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results. | [optional] 

### Return type

[**MemberResultSet**](MemberResultSet.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_ops_union_other_id_get**
> MemberResultSet collections_id_ops_union_other_id_get(id, other_id, opts)

Retrieve the union of two collections

This request returns a resultset containing the members at the union of two collections. If the service features include support for pagination, a cursor may be supplied to iterate backwards and forwards through paged results from prior executions of this query. The response may be an empty set.

### Example
```ruby
# load the gem
require 'rda-collections-client'
# setup authorization
CollectionsClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CollectionsClient::CollectionsApi.new

id = "id_example" # String | Identifier for the first collection in the operation

other_id = "other_id_example" # String | Identifier for the second collection in the operation

opts = { 
  cursor: "cursor_example" # String | If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results.
}

begin
  #Retrieve the union of two collections
  result = api_instance.collections_id_ops_union_other_id_get(id, other_id, opts)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_id_ops_union_other_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the first collection in the operation | 
 **other_id** | **String**| Identifier for the second collection in the operation | 
 **cursor** | **String**| If the service supports pagination and a cursor was returned in a prior response to this query, this can be used to requeste a particular page of the results. | [optional] 

### Return type

[**MemberResultSet**](MemberResultSet.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_put**
> CollectionObject collections_id_put(id, content)

Update the properties of a Collection Object

This request updates the properties of the collection identified by the provided id. The updated collection properties must be supplied in the body of the request. The response may differ depending upon whether or not the  service features include support for syncrhonous actions.

### Example
```ruby
# load the gem
require 'rda-collections-client'
# setup authorization
CollectionsClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CollectionsClient::CollectionsApi.new

id = "id_example" # String | Persistent identifier for the collection

content = CollectionsClient::CollectionObject.new # CollectionObject | The properties of the colleciton to be updated.


begin
  #Update the properties of a Collection Object
  result = api_instance.collections_id_put(id, content)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Persistent identifier for the collection | 
 **content** | [**CollectionObject**](CollectionObject.md)| The properties of the colleciton to be updated. | 

### Return type

[**CollectionObject**](CollectionObject.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_post**
> CollectionObject collections_post(content)

Create a new collection.

This request adds a new collection to the collection store.  The Collection Object properties must be supplied in the  body of the request. 

### Example
```ruby
# load the gem
require 'rda-collections-client'
# setup authorization
CollectionsClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CollectionsClient::CollectionsApi.new

content = CollectionsClient::CollectionObject.new # CollectionObject | The properties of the collection.


begin
  #Create a new collection.
  result = api_instance.collections_post(content)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content** | [**CollectionObject**](CollectionObject.md)| The properties of the collection. | 

### Return type

[**CollectionObject**](CollectionObject.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


