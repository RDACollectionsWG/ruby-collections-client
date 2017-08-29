# CollectionsClient::ServiceApi

All URIs are relative to *https://api.example.org/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**features_get**](ServiceApi.md#features_get) | **GET** /features | Gets the service-level features. A successful request returns an HTTP 200 response code with the ServiceFeatures object in the response body.


# **features_get**
> ServiceFeatures features_get

Gets the service-level features. A successful request returns an HTTP 200 response code with the ServiceFeatures object in the response body.

This request returns the service-level features. Examples of service-level features might include whether or not the service supports assignment of PIDs for collection members, whether it supports pagination and cursors, whether it enforces  access controls, etc.

### Example
```ruby
# load the gem
require 'rda-collections-client'

api_instance = CollectionsClient::ServiceApi.new

begin
  #Gets the service-level features. A successful request returns an HTTP 200 response code with the ServiceFeatures object in the response body.
  result = api_instance.features_get
  p result
rescue CollectionsClient::ApiError => e
  puts "Exception when calling ServiceApi->features_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ServiceFeatures**](ServiceFeatures.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



