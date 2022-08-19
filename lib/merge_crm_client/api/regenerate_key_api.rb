=begin
#Merge CRM API

#The unified API for building rich integrations with multiple CRM platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module MergeCRMClient
  class RegenerateKeyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Exchange remote keys.
    # @param remote_key_for_regeneration_request [RemoteKeyForRegenerationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [RemoteKey]
    def regenerate_key_create(remote_key_for_regeneration_request, opts = {})
      data, _status_code, _headers = regenerate_key_create_with_http_info(remote_key_for_regeneration_request, opts)
      data
    end

    # Exchange remote keys.
    # @param remote_key_for_regeneration_request [RemoteKeyForRegenerationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RemoteKey, Integer, Hash)>] RemoteKey data, response status code and response headers
    def regenerate_key_create_with_http_info(remote_key_for_regeneration_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegenerateKeyApi.regenerate_key_create ...'
      end
      # verify the required parameter 'remote_key_for_regeneration_request' is set
      if @api_client.config.client_side_validation && remote_key_for_regeneration_request.nil?
        fail ArgumentError, "Missing the required parameter 'remote_key_for_regeneration_request' when calling RegenerateKeyApi.regenerate_key_create"
      end
      # resource path
      local_var_path = '/regenerate-key'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(remote_key_for_regeneration_request)

      # return_type
      return_type = opts[:debug_return_type] || 'RemoteKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"RegenerateKeyApi.regenerate_key_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegenerateKeyApi#regenerate_key_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
