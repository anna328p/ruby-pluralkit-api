=begin
#PluralKit

#This is the API for [PluralKit](https://pluralkit.me/)! :)  The API itself is stable, but this document (the OpenAPI description) is still subject to change, and may be updated, corrected or restructured in the future (as long as it's still coherent with the real API).  # Authentication Authentication is handled using a \"system token\". At the moment, the only way to obtain a system token is to use the `pk;token` command through the Discord bot.  This will generate an opaque string you must pass as the `Authorization` header to API requests. Many API endpoints are available anonymously, but most of them will hide information from  unauthenticated requests to align with the relevant privacy settings.  # Errors Errors are just returned as HTTP response codes. Most error responses include a human-readable error message as the body, but this should not be relied on. Just read the response codes :)  # OpenAPI version history - **1.1**: Granular member privacy - **1.0**: (initial definition version) 

The version of the OpenAPI document: 1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-SNAPSHOT

=end

require 'date'
require 'time'

module PluralKitAPI
  class PrivacySetting
    PUBLIC = "public".freeze
    PRIVATE = "private".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PrivacySetting.constants.select { |c| PrivacySetting::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PrivacySetting" if constantValues.empty?
      value
    end
  end
end
