# pluralkit-api

PluralKitAPI - the Ruby gem for the PluralKit

This is the API for [PluralKit](https://pluralkit.me/)! :)

The API itself is stable, but this document (the OpenAPI description) is still subject to change, and may be updated, corrected or restructured in the future (as long as it's still coherent with the real API).

# Authentication
Authentication is handled using a \"system token\". At the moment, the only way
to obtain a system token is to use the `pk;token` command through the Discord bot.

This will generate an opaque string you must pass as the `Authorization` header to API requests.
Many API endpoints are available anonymously, but most of them will hide information from 
unauthenticated requests to align with the relevant privacy settings.

# Errors
Errors are just returned as HTTP response codes. Most error responses include a human-readable
error message as the body, but this should not be relied on. Just read the response codes :)

# OpenAPI version history
- **1.1**: Granular member privacy
- **1.0**: (initial definition version)


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build pluralkit-api.gemspec
```

Then either install the gem locally:

```shell
gem install ./pluralkit-api-1.0.0.gem
```

(for development, run `gem install --dev ./pluralkit-api-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pluralkit-api', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https:///YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'pluralkit-api', :git => 'https:///YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'pluralkit-api'

api_instance = PluralKitAPI::AccountsApi.new
id = 'id_example' # String | A Discord user ID.

begin
  #Gets a system by (one of) its associated Discord accounts.
  result = api_instance.a_id_get(id)
  p result
rescue PluralKitAPI::ApiError => e
  puts "Exception when calling AccountsApi->a_id_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.pluralkit.me/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PluralKitAPI::AccountsApi* | [**a_id_get**](docs/AccountsApi.md#a_id_get) | **GET** /a/{id} | Gets a system by (one of) its associated Discord accounts.
*PluralKitAPI::MembersApi* | [**create_member**](docs/MembersApi.md#create_member) | **POST** /m | Creates a new member in your system.
*PluralKitAPI::MembersApi* | [**delete_member**](docs/MembersApi.md#delete_member) | **DELETE** /m/{id} | Deletes a member.
*PluralKitAPI::MembersApi* | [**get_member**](docs/MembersApi.md#get_member) | **GET** /m/{id} | Gets a member by their ID.
*PluralKitAPI::MembersApi* | [**get_system_members**](docs/MembersApi.md#get_system_members) | **GET** /s/{id}/members | Gets a system's members.
*PluralKitAPI::MembersApi* | [**update_member**](docs/MembersApi.md#update_member) | **PATCH** /m/{id} | Updates a member.
*PluralKitAPI::ProxyingApi* | [**msg_id_get**](docs/ProxyingApi.md#msg_id_get) | **GET** /msg/{id} | Gets information about a proxied message by its message ID.
*PluralKitAPI::SwitchesApi* | [**get_system_fronters**](docs/SwitchesApi.md#get_system_fronters) | **GET** /s/{id}/fronters | Gets a system's current fronters.
*PluralKitAPI::SwitchesApi* | [**get_system_switches**](docs/SwitchesApi.md#get_system_switches) | **GET** /s/{id}/switches | Gets a system's switch history.
*PluralKitAPI::SwitchesApi* | [**register_switch**](docs/SwitchesApi.md#register_switch) | **POST** /s/switches | Registers a new switch.
*PluralKitAPI::SystemsApi* | [**a_id_get**](docs/SystemsApi.md#a_id_get) | **GET** /a/{id} | Gets a system by (one of) its associated Discord accounts.
*PluralKitAPI::SystemsApi* | [**get_own_system**](docs/SystemsApi.md#get_own_system) | **GET** /s | Returns your own system.
*PluralKitAPI::SystemsApi* | [**get_system**](docs/SystemsApi.md#get_system) | **GET** /s/{id} | Gets a system by its ID.
*PluralKitAPI::SystemsApi* | [**get_system_fronters**](docs/SystemsApi.md#get_system_fronters) | **GET** /s/{id}/fronters | Gets a system's current fronters.
*PluralKitAPI::SystemsApi* | [**get_system_members**](docs/SystemsApi.md#get_system_members) | **GET** /s/{id}/members | Gets a system's members.
*PluralKitAPI::SystemsApi* | [**get_system_switches**](docs/SystemsApi.md#get_system_switches) | **GET** /s/{id}/switches | Gets a system's switch history.
*PluralKitAPI::SystemsApi* | [**update_system**](docs/SystemsApi.md#update_system) | **PATCH** /s | Updates an existing system.


## Documentation for Models

 - [PluralKitAPI::FullSwitch](docs/FullSwitch.md)
 - [PluralKitAPI::Member](docs/Member.md)
 - [PluralKitAPI::Message](docs/Message.md)
 - [PluralKitAPI::PrivacySetting](docs/PrivacySetting.md)
 - [PluralKitAPI::ProxyTag](docs/ProxyTag.md)
 - [PluralKitAPI::Switch](docs/Switch.md)
 - [PluralKitAPI::System](docs/System.md)


## Documentation for Authorization


### TokenAuth


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header
