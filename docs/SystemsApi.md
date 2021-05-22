# PluralKitAPI::SystemsApi

All URIs are relative to *https://api.pluralkit.me/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**a_id_get**](SystemsApi.md#a_id_get) | **GET** /a/{id} | Gets a system by (one of) its associated Discord accounts. |
| [**get_own_system**](SystemsApi.md#get_own_system) | **GET** /s | Returns your own system. |
| [**get_system**](SystemsApi.md#get_system) | **GET** /s/{id} | Gets a system by its ID. |
| [**get_system_fronters**](SystemsApi.md#get_system_fronters) | **GET** /s/{id}/fronters | Gets a system&#39;s current fronters. |
| [**get_system_members**](SystemsApi.md#get_system_members) | **GET** /s/{id}/members | Gets a system&#39;s members. |
| [**get_system_switches**](SystemsApi.md#get_system_switches) | **GET** /s/{id}/switches | Gets a system&#39;s switch history. |
| [**update_system**](SystemsApi.md#update_system) | **PATCH** /s | Updates an existing system. |


## a_id_get

> <System> a_id_get(id)

Gets a system by (one of) its associated Discord accounts.

Note that it's currently not possible to get a system's registered accounts given a system ID through the API. Consider this endpoint \"one-way\". 

### Examples

```ruby
require 'time'
require 'pluralkit-api'

api_instance = PluralKitAPI::SystemsApi.new
id = 'id_example' # String | A Discord user ID.

begin
  # Gets a system by (one of) its associated Discord accounts.
  result = api_instance.a_id_get(id)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->a_id_get: #{e}"
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
  puts "Error when calling SystemsApi->a_id_get_with_http_info: #{e}"
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


## get_own_system

> <System> get_own_system

Returns your own system.

Requires authentication, and will returns the system the token belongs to.

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

api_instance = PluralKitAPI::SystemsApi.new

begin
  # Returns your own system.
  result = api_instance.get_own_system
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->get_own_system: #{e}"
end
```

#### Using the get_own_system_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<System>, Integer, Hash)> get_own_system_with_http_info

```ruby
begin
  # Returns your own system.
  data, status_code, headers = api_instance.get_own_system_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <System>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->get_own_system_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**System**](System.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_system

> <System> get_system(id)

Gets a system by its ID.

Partial information may be returned if not authenticated with this system's token.

### Examples

```ruby
require 'time'
require 'pluralkit-api'

api_instance = PluralKitAPI::SystemsApi.new
id = 'id_example' # String | The ID of the system in question.

begin
  # Gets a system by its ID.
  result = api_instance.get_system(id)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->get_system: #{e}"
end
```

#### Using the get_system_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<System>, Integer, Hash)> get_system_with_http_info(id)

```ruby
begin
  # Gets a system by its ID.
  data, status_code, headers = api_instance.get_system_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <System>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->get_system_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the system in question. |  |

### Return type

[**System**](System.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_system_fronters

> <FullSwitch> get_system_fronters(id)

Gets a system's current fronters.

### Examples

```ruby
require 'time'
require 'pluralkit-api'

api_instance = PluralKitAPI::SystemsApi.new
id = 'id_example' # String | The ID of the system in question.

begin
  # Gets a system's current fronters.
  result = api_instance.get_system_fronters(id)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->get_system_fronters: #{e}"
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
  puts "Error when calling SystemsApi->get_system_fronters_with_http_info: #{e}"
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


## get_system_members

> <Array<System>> get_system_members(id)

Gets a system's members.

If the API token does not belong to this system, this list may exclude any private members in the system. 

### Examples

```ruby
require 'time'
require 'pluralkit-api'

api_instance = PluralKitAPI::SystemsApi.new
id = 'id_example' # String | The ID of the system in question.

begin
  # Gets a system's members.
  result = api_instance.get_system_members(id)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->get_system_members: #{e}"
end
```

#### Using the get_system_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<System>>, Integer, Hash)> get_system_members_with_http_info(id)

```ruby
begin
  # Gets a system's members.
  data, status_code, headers = api_instance.get_system_members_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<System>>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->get_system_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the system in question. |  |

### Return type

[**Array&lt;System&gt;**](System.md)

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

api_instance = PluralKitAPI::SystemsApi.new
id = 'id_example' # String | The ID of the system in question.
opts = {
  before: Time.parse('2013-10-20T19:20:30+01:00') # Time | If provided, will only return switches that happened *before* (and not including) this timestamp.  This can be used for pagination by calling the endpoint again with the timestamp of the last switch of the previous response. 
}

begin
  # Gets a system's switch history.
  result = api_instance.get_system_switches(id, opts)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->get_system_switches: #{e}"
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
  puts "Error when calling SystemsApi->get_system_switches_with_http_info: #{e}"
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


## update_system

> <System> update_system(system)

Updates an existing system.

Requires authentication, and will update the system the token belongs to.

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

api_instance = PluralKitAPI::SystemsApi.new
system = PluralKitAPI::System.new # System | 

begin
  # Updates an existing system.
  result = api_instance.update_system(system)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->update_system: #{e}"
end
```

#### Using the update_system_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<System>, Integer, Hash)> update_system_with_http_info(system)

```ruby
begin
  # Updates an existing system.
  data, status_code, headers = api_instance.update_system_with_http_info(system)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <System>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling SystemsApi->update_system_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system** | [**System**](System.md) |  |  |

### Return type

[**System**](System.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

