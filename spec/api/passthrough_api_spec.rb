=begin
#Merge CRM API

#The unified API for building rich integrations with multiple CRM platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MergeCRMClient::PassthroughApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PassthroughApi' do
  before do
    # run before each test
    @api_instance = MergeCRMClient::PassthroughApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PassthroughApi' do
    it 'should create an instance of PassthroughApi' do
      expect(@api_instance).to be_instance_of(MergeCRMClient::PassthroughApi)
    end
  end

  # unit tests for passthrough_create
  # Pull data from an endpoint not currently supported by Merge.
  # @param x_account_token Token identifying the end user.
  # @param data_passthrough_request 
  # @param [Hash] opts the optional parameters
  # @return [RemoteResponse]
  describe 'passthrough_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
