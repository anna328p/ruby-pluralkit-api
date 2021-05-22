# PluralKitAPI::MembersApi

All URIs are relative to *https://api.pluralkit.me/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member**](MembersApi.md#create_member) | **POST** /m | Creates a new member in your system. |
| [**delete_member**](MembersApi.md#delete_member) | **DELETE** /m/{id} | Deletes a member. |
| [**get_member**](MembersApi.md#get_member) | **GET** /m/{id} | Gets a member by their ID. |
| [**get_system_members**](MembersApi.md#get_system_members) | **GET** /s/{id}/members | Gets a system&#39;s members. |
| [**update_member**](MembersApi.md#update_member) | **PATCH** /m/{id} | Updates a member. |


## create_member

> <Member> create_member(member)

Creates a new member in your system.

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

api_instance = PluralKitAPI::MembersApi.new
member = PluralKitAPI::Member.new # Member | 

begin
  # Creates a new member in your system.
  result = api_instance.create_member(member)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling MembersApi->create_member: #{e}"
end
```

#### Using the create_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Member>, Integer, Hash)> create_member_with_http_info(member)

```ruby
begin
  # Creates a new member in your system.
  data, status_code, headers = api_instance.create_member_with_http_info(member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Member>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling MembersApi->create_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member** | [**Member**](Member.md) |  |  |

### Return type

[**Member**](Member.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_member

> delete_member(id)

Deletes a member.

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

api_instance = PluralKitAPI::MembersApi.new
id = 'id_example' # String | The ID of the member in question.

begin
  # Deletes a member.
  api_instance.delete_member(id)
rescue PluralKitAPI::ApiError => e
  puts "Error when calling MembersApi->delete_member: #{e}"
end
```

#### Using the delete_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_with_http_info(id)

```ruby
begin
  # Deletes a member.
  data, status_code, headers = api_instance.delete_member_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PluralKitAPI::ApiError => e
  puts "Error when calling MembersApi->delete_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the member in question. |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member

> <Member> get_member(id)

Gets a member by their ID.

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

api_instance = PluralKitAPI::MembersApi.new
id = 'id_example' # String | The ID of the member in question.

begin
  # Gets a member by their ID.
  result = api_instance.get_member(id)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling MembersApi->get_member: #{e}"
end
```

#### Using the get_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Member>, Integer, Hash)> get_member_with_http_info(id)

```ruby
begin
  # Gets a member by their ID.
  data, status_code, headers = api_instance.get_member_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Member>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling MembersApi->get_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the member in question. |  |

### Return type

[**Member**](Member.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

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

api_instance = PluralKitAPI::MembersApi.new
id = 'id_example' # String | The ID of the system in question.

begin
  # Gets a system's members.
  result = api_instance.get_system_members(id)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling MembersApi->get_system_members: #{e}"
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
  puts "Error when calling MembersApi->get_system_members_with_http_info: #{e}"
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


## update_member

> <Member> update_member(id, member)

Updates a member.

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

api_instance = PluralKitAPI::MembersApi.new
id = 'id_example' # String | The ID of the member in question.
member = PluralKitAPI::Member.new # Member | 

begin
  # Updates a member.
  result = api_instance.update_member(id, member)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Error when calling MembersApi->update_member: #{e}"
end
```

#### Using the update_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Member>, Integer, Hash)> update_member_with_http_info(id, member)

```ruby
begin
  # Updates a member.
  data, status_code, headers = api_instance.update_member_with_http_info(id, member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Member>
rescue PluralKitAPI::ApiError => e
  puts "Error when calling MembersApi->update_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the member in question. |  |
| **member** | [**Member**](Member.md) |  |  |

### Return type

[**Member**](Member.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

