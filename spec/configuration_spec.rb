=begin
#PluralKit

#This is the API for [PluralKit](https://pluralkit.me/)! :)  The API itself is stable, but this document (the OpenAPI description) is still subject to change, and may be updated, corrected or restructured in the future (as long as it's still coherent with the real API).  # Authentication Authentication is handled using a \"system token\". At the moment, the only way to obtain a system token is to use the `pk;token` command through the Discord bot.  This will generate an opaque string you must pass as the `Authorization` header to API requests. Many API endpoints are available anonymously, but most of them will hide information from  unauthenticated requests to align with the relevant privacy settings.  # Errors Errors are just returned as HTTP response codes. Most error responses include a human-readable error message as the body, but this should not be relied on. Just read the response codes :)  # OpenAPI version history - **1.1**: Granular member privacy - **1.0**: (initial definition version) 

The version of the OpenAPI document: 1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-SNAPSHOT

=end

require 'spec_helper'

describe PluralKitAPI::Configuration do
  let(:config) { PluralKitAPI::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.pluralkit.me/v1")
    # PluralKitAPI.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.pluralkit.me/v1")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.pluralkit.me/v1")
      end
    end
  end
end