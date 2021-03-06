=begin
#PluralKit

#This is the API for [PluralKit](https://pluralkit.me/)! :)  The API itself is stable, but this document (the OpenAPI description) is still subject to change, and may be updated, corrected or restructured in the future (as long as it's still coherent with the real API).  # Authentication Authentication is handled using a \"system token\". At the moment, the only way to obtain a system token is to use the `pk;token` command through the Discord bot.  This will generate an opaque string you must pass as the `Authorization` header to API requests. Many API endpoints are available anonymously, but most of them will hide information from  unauthenticated requests to align with the relevant privacy settings.  # Errors Errors are just returned as HTTP response codes. Most error responses include a human-readable error message as the body, but this should not be relied on. Just read the response codes :)  # OpenAPI version history - **1.1**: Granular member privacy - **1.0**: (initial definition version) 

The version of the OpenAPI document: 1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-SNAPSHOT

=end

require 'cgi'

module PluralKitAPI
  class SwitchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets a system's current fronters.
    # @param id [String] The ID of the system in question.
    # @param [Hash] opts the optional parameters
    # @return [FullSwitch]
    def get_system_fronters(id, opts = {})
      data, _status_code, _headers = get_system_fronters_with_http_info(id, opts)
      data
    end

    # Gets a system&#39;s current fronters.
    # @param id [String] The ID of the system in question.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FullSwitch, Integer, Hash)>] FullSwitch data, response status code and response headers
    def get_system_fronters_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchesApi.get_system_fronters ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SwitchesApi.get_system_fronters"
      end
      if @api_client.config.client_side_validation && id.to_s.length > 5
        fail ArgumentError, 'invalid value for "id" when calling SwitchesApi.get_system_fronters, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && id.to_s.length < 5
        fail ArgumentError, 'invalid value for "id" when calling SwitchesApi.get_system_fronters, the character length must be great than or equal to 5.'
      end

      pattern = Regexp.new(/^[a-z]{5}$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling SwitchesApi.get_system_fronters, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/s/{id}/fronters'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'FullSwitch'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SwitchesApi.get_system_fronters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchesApi#get_system_fronters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a system's switch history.
    # Will return the system's switch history, up to 100 entries at a time, in reverse-chronological (latest first) order.  For pagination, see the `before` query parameter. 
    # @param id [String] The ID of the system in question.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :before If provided, will only return switches that happened *before* (and not including) this timestamp.  This can be used for pagination by calling the endpoint again with the timestamp of the last switch of the previous response. 
    # @return [Array<Switch>]
    def get_system_switches(id, opts = {})
      data, _status_code, _headers = get_system_switches_with_http_info(id, opts)
      data
    end

    # Gets a system&#39;s switch history.
    # Will return the system&#39;s switch history, up to 100 entries at a time, in reverse-chronological (latest first) order.  For pagination, see the &#x60;before&#x60; query parameter. 
    # @param id [String] The ID of the system in question.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :before If provided, will only return switches that happened *before* (and not including) this timestamp.  This can be used for pagination by calling the endpoint again with the timestamp of the last switch of the previous response. 
    # @return [Array<(Array<Switch>, Integer, Hash)>] Array<Switch> data, response status code and response headers
    def get_system_switches_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchesApi.get_system_switches ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SwitchesApi.get_system_switches"
      end
      if @api_client.config.client_side_validation && id.to_s.length > 5
        fail ArgumentError, 'invalid value for "id" when calling SwitchesApi.get_system_switches, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && id.to_s.length < 5
        fail ArgumentError, 'invalid value for "id" when calling SwitchesApi.get_system_switches, the character length must be great than or equal to 5.'
      end

      pattern = Regexp.new(/^[a-z]{5}$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling SwitchesApi.get_system_switches, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/s/{id}/switches'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Switch>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SwitchesApi.get_system_switches",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchesApi#get_system_switches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Registers a new switch.
    # @param switch [Switch] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def register_switch(switch, opts = {})
      register_switch_with_http_info(switch, opts)
      nil
    end

    # Registers a new switch.
    # @param switch [Switch] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def register_switch_with_http_info(switch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchesApi.register_switch ...'
      end
      # verify the required parameter 'switch' is set
      if @api_client.config.client_side_validation && switch.nil?
        fail ArgumentError, "Missing the required parameter 'switch' when calling SwitchesApi.register_switch"
      end
      # resource path
      local_var_path = '/s/switches'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(switch)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['TokenAuth']

      new_options = opts.merge(
        :operation => :"SwitchesApi.register_switch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchesApi#register_switch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
