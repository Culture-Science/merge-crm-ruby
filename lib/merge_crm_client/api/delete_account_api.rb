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
  class DeleteAccountApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a linked account.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_account_create(x_account_token, opts = {})
      delete_account_create_with_http_info(x_account_token, opts)
      nil
    end

    # Delete a linked account.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_account_create_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeleteAccountApi.delete_account_create ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling DeleteAccountApi.delete_account_create"
      end
      # resource path
      local_var_path = '/delete-account'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"DeleteAccountApi.delete_account_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeleteAccountApi#delete_account_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
