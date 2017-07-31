# CollectionsClient::MembersApi

All URIs are relative to *https://api.example.org/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**collections_id_members_get**](MembersApi.md#collections_id_members_get) | **GET** /collections/{id}/members | Get the members in a collection
[**collections_id_members_mid_delete**](MembersApi.md#collections_id_members_mid_delete) | **DELETE** /collections/{id}/members/{mid} | Remove a collection member item.
[**collections_id_members_mid_get**](MembersApi.md#collections_id_members_mid_get) | **GET** /collections/{id}/members/{mid} | Get the properties of a member item in a collection
[**collections_id_members_mid_properties_property_delete**](MembersApi.md#collections_id_members_mid_properties_property_delete) | **DELETE** /collections/{id}/members/{mid}/properties/{property} | Delete a named property of a member item in a collection
[**collections_id_members_mid_properties_property_get**](MembersApi.md#collections_id_members_mid_properties_property_get) | **GET** /collections/{id}/members/{mid}/properties/{property} | Get a named property of a member item in a collection
[**collections_id_members_mid_properties_property_put**](MembersApi.md#collections_id_members_mid_properties_property_put) | **PUT** /collections/{id}/members/{mid}/properties/{property} | Update a named property of a member item in a collection
[**collections_id_members_mid_put**](MembersApi.md#collections_id_members_mid_put) | **PUT** /collections/{id}/members/{mid} | Update the properties of a collection member item.
[**collections_id_members_post**](MembersApi.md#collections_id_members_post) | **POST** /collections/{id}/members | Add a new member item to this collection


# **collections_id_members_get**
> MemberResultSet collections_id_members_get(id, opts)

Get the members in a collection

This request returns the list of members contained in a collection.  This may be a complete list, or if the service features include support for pagination, the cursors in the response may be used to iterate backwards and forwards through pages of partial results. Query parameters may be used to supply filtering criteria for the response. When combining filters of different types, the boolean AND will be used. When combining multiple instances of filters of the same type, the boolean OR will be used.

### Example
```ruby
# load the gem
require 'rda-collections-client'

api_instance = CollectionsClient::MembersApi.new

id = "id_example" # String | Identifier for the collection

opts = { 
  f_datatype: "f_datatype_example", # String | Filter response to members matching the requested datatype.
  f_role: "f_role_example", # String | Filter response to members who are assigned the requested role. (Only if the collection capability supportsRoles is true).
  f_index: 56, # Integer | Filter response to the members assigned the requested index. (Only if the collection capability isOrdered is true).
  f_date_added: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Filter response to the membered added on the requestd datetime.
  cursor: "cursor_example", # String | cursor for iterating a prior response to this query
  expand_depth: 56 # Integer | expand members which are collections to this depth. may not exceed maxExpansionDepth feature setting for the service.
}

begin
  #Get the members in a collection
  result = api_instance.collections_id_members_get(id, opts)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling MembersApi->collections_id_members_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the collection | 
 **f_datatype** | **String**| Filter response to members matching the requested datatype. | [optional] 
 **f_role** | **String**| Filter response to members who are assigned the requested role. (Only if the collection capability supportsRoles is true). | [optional] 
 **f_index** | **Integer**| Filter response to the members assigned the requested index. (Only if the collection capability isOrdered is true). | [optional] 
 **f_date_added** | **DateTime**| Filter response to the membered added on the requestd datetime. | [optional] 
 **cursor** | **String**| cursor for iterating a prior response to this query | [optional] 
 **expand_depth** | **Integer**| expand members which are collections to this depth. may not exceed maxExpansionDepth feature setting for the service. | [optional] 

### Return type

[**MemberResultSet**](MemberResultSet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_members_mid_delete**
> collections_id_members_mid_delete(id, mid)

Remove a collection member item.

Removes a member item from a collection. The response may differ depending upon whether or not the  service features include support for asynchronous actions.

### Example
```ruby
# load the gem
require 'rda-collections-client'
# setup authorization
CollectionsClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CollectionsClient::MembersApi.new

id = "id_example" # String | Persistent identifier for the collection

mid = "mid_example" # String | Identifier for the collection member


begin
  #Remove a collection member item.
  api_instance.collections_id_members_mid_delete(id, mid)
rescue CollectionsClient::ApiError => e
  puts "Exception when calling MembersApi->collections_id_members_mid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Persistent identifier for the collection | 
 **mid** | **String**| Identifier for the collection member | 

### Return type

nil (empty response body)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_members_mid_get**
> MemberItem collections_id_members_mid_get(id, mid)

Get the properties of a member item in a collection

This request retrieves the properties of a specific member item from a collection

### Example
```ruby
# load the gem
require 'rda-collections-client'

api_instance = CollectionsClient::MembersApi.new

id = "id_example" # String | Identifier for the collection

mid = "mid_example" # String | Identifier for the collection member item.


begin
  #Get the properties of a member item in a collection
  result = api_instance.collections_id_members_mid_get(id, mid)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling MembersApi->collections_id_members_mid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the collection | 
 **mid** | **String**| Identifier for the collection member item. | 

### Return type

[**MemberItem**](MemberItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_members_mid_properties_property_delete**
> collections_id_members_mid_properties_property_delete(id, mid, property)

Delete a named property of a member item in a collection

This request deletes a specific named property of a specific member item from a collection

### Example
```ruby
# load the gem
require 'rda-collections-client'

api_instance = CollectionsClient::MembersApi.new

id = "id_example" # String | Identifier for the collection

mid = "mid_example" # String | Identifier for the collection member item.

property = "property_example" # String | the name of a property to update


begin
  #Delete a named property of a member item in a collection
  api_instance.collections_id_members_mid_properties_property_delete(id, mid, property)
rescue CollectionsClient::ApiError => e
  puts "Exception when calling MembersApi->collections_id_members_mid_properties_property_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the collection | 
 **mid** | **String**| Identifier for the collection member item. | 
 **property** | **String**| the name of a property to update | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_members_mid_properties_property_get**
> MemberItem collections_id_members_mid_properties_property_get(id, mid, property)

Get a named property of a member item in a collection

This request retrieves a specific named property of a specific member item from a collection

### Example
```ruby
# load the gem
require 'rda-collections-client'

api_instance = CollectionsClient::MembersApi.new

id = "id_example" # String | Identifier for the collection

mid = "mid_example" # String | Identifier for the collection member item.

property = "property_example" # String | the name of a property to retrieve (e.g. index)


begin
  #Get a named property of a member item in a collection
  result = api_instance.collections_id_members_mid_properties_property_get(id, mid, property)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling MembersApi->collections_id_members_mid_properties_property_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the collection | 
 **mid** | **String**| Identifier for the collection member item. | 
 **property** | **String**| the name of a property to retrieve (e.g. index) | 

### Return type

[**MemberItem**](MemberItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_members_mid_properties_property_put**
> MemberItem collections_id_members_mid_properties_property_put(id, mid, property, content)

Update a named property of a member item in a collection

This request updates a specific named property of a specific member item from a collection

### Example
```ruby
# load the gem
require 'rda-collections-client'

api_instance = CollectionsClient::MembersApi.new

id = "id_example" # String | Identifier for the collection

mid = "mid_example" # String | Identifier for the collection member item.

property = "property_example" # String | the name of a property to update

content = "content_example" # String | new property value


begin
  #Update a named property of a member item in a collection
  result = api_instance.collections_id_members_mid_properties_property_put(id, mid, property, content)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling MembersApi->collections_id_members_mid_properties_property_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the collection | 
 **mid** | **String**| Identifier for the collection member item. | 
 **property** | **String**| the name of a property to update | 
 **content** | **String**| new property value | 

### Return type

[**MemberItem**](MemberItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_members_mid_put**
> MemberItem collections_id_members_mid_put(id, mid, content)

Update the properties of a collection member item.

This request updates the properties of a collection member item.  The updated member  properties must be supplied in the body of the request. The response may differ  depending upon whether or not the  service features include support  for asynchronous actions.

### Example
```ruby
# load the gem
require 'rda-collections-client'
# setup authorization
CollectionsClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CollectionsClient::MembersApi.new

id = "id_example" # String | Identifier for the collection

mid = "mid_example" # String | Identifier for the collection member

content = CollectionsClient::CollectionObject.new # CollectionObject | collection metadata


begin
  #Update the properties of a collection member item.
  result = api_instance.collections_id_members_mid_put(id, mid, content)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling MembersApi->collections_id_members_mid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the collection | 
 **mid** | **String**| Identifier for the collection member | 
 **content** | [**CollectionObject**](CollectionObject.md)| collection metadata | 

### Return type

[**MemberItem**](MemberItem.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_id_members_post**
> Array&lt;MemberItem&gt; collections_id_members_post(id, content)

Add a new member item to this collection

This request adds a new member item to a collection. If the service features include support for PID assignment to member items, then if no id is supplied for the item it  will be assigned automatically.  

### Example
```ruby
# load the gem
require 'rda-collections-client'
# setup authorization
CollectionsClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = CollectionsClient::MembersApi.new

id = "id_example" # String | Identifier for the collection

content = [CollectionsClient::MemberItem.new] # Array<MemberItem> | The properties of the member item to add to the collection. Id may be required.


begin
  #Add a new member item to this collection
  result = api_instance.collections_id_members_post(id, content)
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling MembersApi->collections_id_members_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier for the collection | 
 **content** | [**Array&lt;MemberItem&gt;**](MemberItem.md)| The properties of the member item to add to the collection. Id may be required. | 

### Return type

[**Array&lt;MemberItem&gt;**](MemberItem.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



