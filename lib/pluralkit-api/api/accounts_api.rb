=begin
#PluralKit

#This is the API for [PluralKit](https://pluralkit.me/)! :)  The API itself is stable, but this document (the OpenAPI description) is still subject to change, and may be updated, corrected or restructured in the future (as long as it's still coherent with the real API).  # Authentication Authentication is handled using a \"system token\". At the moment, the only way to obtain a system token is to use the `pk;token` command through the Discord bot.  This will generate an opaque string you must pass as the `Authorization` header to API requests. Many API endpoints are available anonymously, but most of them will hide information from  unauthenticated requests to align with the relevant privacy settings.  # Errors Errors are just returned as HTTP response codes. Most error responses include a human-readable error message as the body, but this should not be relied on. Just read the response codes :)  # OpenAPI version history - **1.1**: Granular member privacy - **1.0**: (initial definition version) 

The version of the OpenAPI document: 1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-SNAPSHOT

=end

require 'cgi'

module PluralKitAPI
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets a system by (one of) its associated Discord accounts.
    # Note that it's currently not possible to get a system's registered accounts given a system ID through the API. Consider this endpoint \"one-way\". 
    # @param id [String] A Discord user ID.
    # @param [Hash] opts the optional parameters
    # @return [System]
    def a_id_get(id, opts = {})
      data, _status_code, _headers = a_id_get_with_http_info(id, opts)
      data
    end

    # Gets a system by (one of) its associated Discord accounts.
    # Note that it&#39;s currently not possible to get a system&#39;s registered accounts given a system ID through the API. Consider this endpoint \&quot;one-way\&quot;. 
    # @param id [String] A Discord user ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(System, Integer, Hash)>] System data, response status code and response headers
    def a_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.a_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.a_id_get"
      end
      if @api_client.config.client_side_validation && id.to_s.length > 19
        fail ArgumentError, 'invalid value for "id" when calling AccountsApi.a_id_get, the character length must be smaller than or equal to 19.'
      end

      if @api_client.config.client_side_validation && id.to_s.length < 17
        fail ArgumentError, 'invalid value for "id" when calling AccountsApi.a_id_get, the character length must be great than or equal to 17.'
      end

      pattern = Regexp.new(/^[0-9]{17,19}/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling AccountsApi.a_id_get, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/a/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'System'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.a_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#a_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
