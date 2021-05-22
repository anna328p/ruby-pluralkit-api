# PluralKitAPI::ProxyingApi

All URIs are relative to *https://api.pluralkit.me/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**msg_id_get**](ProxyingApi.md#msg_id_get) | **GET** /msg/{id} | Gets information about a proxied message by its message ID. |


## msg_id_get

> <Message> msg_id_get(id)

Gets information about a proxied message by its message ID.

### Examples

```ruby
require 'time'
require 'pluralkit-api'

api_instance = PluralKitAPI::ProxyingApi.new
id = 'id_example' # String | A Discord message ID.  This may refer to either the original \"trigger message\" posted by the user, or to the resulting webhook message posted by PluralKit. The former may be useful for eg. logging bot integration. 

begin
  # Gets information about a proxied message by its message ID.
  result = api_instance.msg_id_get(id)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling ProxyingApi->msg_id_get: #{e}"
end
```

#### Using the msg_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Message>, Integer, Hash)> msg_id_get_with_http_info(id)

```ruby
begin
  # Gets information about a proxied message by its message ID.
  data, status_code, headers = api_instance.msg_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Message>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling ProxyingApi->msg_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A Discord message ID.  This may refer to either the original \&quot;trigger message\&quot; posted by the user, or to the resulting webhook message posted by PluralKit. The former may be useful for eg. logging bot integration.  |  |

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

