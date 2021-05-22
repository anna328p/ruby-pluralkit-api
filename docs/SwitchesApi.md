# PluralKitAPI::SwitchesApi

All URIs are relative to *https://api.pluralkit.me/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_system_fronters**](SwitchesApi.md#get_system_fronters) | **GET** /s/{id}/fronters | Gets a system&#39;s current fronters. |
| [**get_system_switches**](SwitchesApi.md#get_system_switches) | **GET** /s/{id}/switches | Gets a system&#39;s switch history. |
| [**register_switch**](SwitchesApi.md#register_switch) | **POST** /s/switches | Registers a new switch. |


## get_system_fronters

> <FullSwitch> get_system_fronters(id)

Gets a system's current fronters.

### Examples

```ruby
require 'time'
require 'pluralkit-api'

api_instance = PluralKitAPI::SwitchesApi.new
id = 'id_example' # String | The ID of the system in question.

begin
  # Gets a system's current fronters.
  result = api_instance.get_system_fronters(id)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SwitchesApi->get_system_fronters: #{e}"
end
```

#### Using the get_system_fronters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FullSwitch>, Integer, Hash)> get_system_fronters_with_http_info(id)

```ruby
begin
  # Gets a system's current fronters.
  data, status_code, headers = api_instance.get_system_fronters_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FullSwitch>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SwitchesApi->get_system_fronters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the system in question. |  |

### Return type

[**FullSwitch**](FullSwitch.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_system_switches

> <Array<Switch>> get_system_switches(id, opts)

Gets a system's switch history.

Will return the system's switch history, up to 100 entries at a time, in reverse-chronological (latest first) order.  For pagination, see the `before` query parameter. 

### Examples

```ruby
require 'time'
require 'pluralkit-api'

api_instance = PluralKitAPI::SwitchesApi.new
id = 'id_example' # String | The ID of the system in question.
opts = {
  before: Time.parse('2013-10-20T19:20:30+01:00') # Time | If provided, will only return switches that happened *before* (and not including) this timestamp.  This can be used for pagination by calling the endpoint again with the timestamp of the last switch of the previous response. 
}

begin
  # Gets a system's switch history.
  result = api_instance.get_system_switches(id, opts)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SwitchesApi->get_system_switches: #{e}"
end
```

#### Using the get_system_switches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Switch>>, Integer, Hash)> get_system_switches_with_http_info(id, opts)

```ruby
begin
  # Gets a system's switch history.
  data, status_code, headers = api_instance.get_system_switches_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Switch>>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SwitchesApi->get_system_switches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the system in question. |  |
| **before** | **Time** | If provided, will only return switches that happened *before* (and not including) this timestamp.  This can be used for pagination by calling the endpoint again with the timestamp of the last switch of the previous response.  | [optional] |

### Return type

[**Array&lt;Switch&gt;**](Switch.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## register_switch

> register_switch(switch)

Registers a new switch.

### Examples

```ruby
require 'time'
require 'pluralkit-api'
# setup authorization
PluralKitAPI.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = PluralKitAPI::SwitchesApi.new
switch = PluralKitAPI::Switch.new # Switch | 

begin
  # Registers a new switch.
  api_instance.register_switch(switch)
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SwitchesApi->register_switch: #{e}"
end
```

#### Using the register_switch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> register_switch_with_http_info(switch)

```ruby
begin
  # Registers a new switch.
  data, status_code, headers = api_instance.register_switch_with_http_info(switch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SwitchesApi->register_switch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **switch** | [**Switch**](Switch.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

