# PluralKitAPI::AccountsApi

All URIs are relative to *https://api.pluralkit.me/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**a_id_get**](AccountsApi.md#a_id_get) | **GET** /a/{id} | Gets a system by (one of) its associated Discord accounts. |


## a_id_get

> <System> a_id_get(id)

Gets a system by (one of) its associated Discord accounts.

Note that it's currently not possible to get a system's registered accounts given a system ID through the API. Consider this endpoint \"one-way\". 

### Examples

```ruby
require 'time'
require 'pluralkit-api'

api_instance = PluralKitAPI::AccountsApi.new
id = 'id_example' # String | A Discord user ID.

begin
  # Gets a system by (one of) its associated Discord accounts.
  result = api_instance.a_id_get(id)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling AccountsApi->a_id_get: #{e}"
end
```

#### Using the a_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<System>, Integer, Hash)> a_id_get_with_http_info(id)

```ruby
begin
  # Gets a system by (one of) its associated Discord accounts.
  data, status_code, headers = api_instance.a_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <System>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling AccountsApi->a_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A Discord user ID. |  |

### Return type

[**System**](System.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

