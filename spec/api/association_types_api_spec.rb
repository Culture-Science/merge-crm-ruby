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

# Unit tests for MergeCRMClient::AssociationTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AssociationTypesApi' do
  before do
    # run before each test
    @api_instance = MergeCRMClient::AssociationTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AssociationTypesApi' do
    it 'should create an instance of AssociationTypesApi' do
      expect(@api_instance).to be_instance_of(MergeCRMClient::AssociationTypesApi)
    end
  end

  # unit tests for custom_object_classes_association_types_create
  # Creates an &#x60;AssociationType&#x60; object with the given values.
  # @param x_account_token Token identifying the end user.
  # @param custom_object_class_id 
  # @param crm_association_type_endpoint_request 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
  # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
  # @return [CRMAssociationTypeResponse]
  describe 'custom_object_classes_association_types_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for custom_object_classes_association_types_list
  # Returns a list of &#x60;AssociationType&#x60; objects.
  # @param x_account_token Token identifying the end user.
  # @param custom_object_class_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
  # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
  # @option opts [String] :cursor The pagination cursor value.
  # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
  # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
  # @option opts [Time] :modified_after If provided, only objects synced by Merge after this date time will be returned.
  # @option opts [Time] :modified_before If provided, only objects synced by Merge before this date time will be returned.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
  # @return [PaginatedAssociationTypeList]
  describe 'custom_object_classes_association_types_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for custom_object_classes_association_types_meta_post_retrieve
  # Returns metadata for &#x60;CRMAssociationType&#x60; POSTs.
  # @param x_account_token Token identifying the end user.
  # @param custom_object_class_id 
  # @param [Hash] opts the optional parameters
  # @return [MetaResponse]
  describe 'custom_object_classes_association_types_meta_post_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for custom_object_classes_association_types_retrieve
  # Returns an &#x60;AssociationType&#x60; object with the given &#x60;id&#x60;.
  # @param x_account_token Token identifying the end user.
  # @param custom_object_class_id 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
  # @return [AssociationType]
  describe 'custom_object_classes_association_types_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end