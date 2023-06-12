=begin
#Merge CRM API

#The unified API for building rich integrations with multiple CRM platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module MergeCRMClient
  # # The Account Object ### Description The `Account` object is used to represent a company in a CRM system. ### Usage Example TODO
  class Account
    # The account's owner.
    attr_accessor :owner

    # The account's name.
    attr_accessor :name

    # The account's description.
    attr_accessor :description

    # The account's industry.
    attr_accessor :industry

    # The account's website.
    attr_accessor :website

    # The account's number of employees.
    attr_accessor :number_of_employees

    attr_accessor :addresses

    attr_accessor :phone_numbers

    # The last date (either most recent or furthest in the future) of when an activity occurs in an account.
    attr_accessor :last_activity_at

    # When the CRM system account data was last modified by a user with a login.
    attr_accessor :remote_updated_at

    # When the third party's account was created.
    attr_accessor :remote_created_at

    attr_accessor :remote_was_deleted

    attr_accessor :id

    # The third-party API ID of the matching object.
    attr_accessor :remote_id

    attr_accessor :field_mappings

    # This is the datetime that this object was last updated by Merge
    attr_accessor :modified_at

    attr_accessor :remote_data

    attr_accessor :remote_fields

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'owner' => :'owner',
        :'name' => :'name',
        :'description' => :'description',
        :'industry' => :'industry',
        :'website' => :'website',
        :'number_of_employees' => :'number_of_employees',
        :'addresses' => :'addresses',
        :'phone_numbers' => :'phone_numbers',
        :'last_activity_at' => :'last_activity_at',
        :'remote_updated_at' => :'remote_updated_at',
        :'remote_created_at' => :'remote_created_at',
        :'remote_was_deleted' => :'remote_was_deleted',
        :'id' => :'id',
        :'remote_id' => :'remote_id',
        :'field_mappings' => :'field_mappings',
        :'modified_at' => :'modified_at',
        :'remote_data' => :'remote_data',
        :'remote_fields' => :'remote_fields'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'owner' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'industry' => :'String',
        :'website' => :'String',
        :'number_of_employees' => :'Integer',
        :'addresses' => :'Array<Address>',
        :'phone_numbers' => :'Array<PhoneNumber>',
        :'last_activity_at' => :'Time',
        :'remote_updated_at' => :'Time',
        :'remote_created_at' => :'Time',
        :'remote_was_deleted' => :'Boolean',
        :'id' => :'String',
        :'remote_id' => :'String',
        :'field_mappings' => :'Hash<String, Object>',
        :'modified_at' => :'Time',
        :'remote_data' => :'Array<RemoteData>',
        :'remote_fields' => :'Array<RemoteField>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'owner',
        :'name',
        :'description',
        :'industry',
        :'website',
        :'number_of_employees',
        :'last_activity_at',
        :'remote_updated_at',
        :'remote_created_at',
        :'remote_id',
        :'field_mappings',
        :'remote_data',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MergeCRMClient::Account` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MergeCRMClient::Account`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'industry')
        self.industry = attributes[:'industry']
      end

      if attributes.key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.key?(:'number_of_employees')
        self.number_of_employees = attributes[:'number_of_employees']
      end

      if attributes.key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.key?(:'phone_numbers')
        if (value = attributes[:'phone_numbers']).is_a?(Array)
          self.phone_numbers = value
        end
      end

      if attributes.key?(:'last_activity_at')
        self.last_activity_at = attributes[:'last_activity_at']
      end

      if attributes.key?(:'remote_updated_at')
        self.remote_updated_at = attributes[:'remote_updated_at']
      end

      if attributes.key?(:'remote_created_at')
        self.remote_created_at = attributes[:'remote_created_at']
      end

      if attributes.key?(:'remote_was_deleted')
        self.remote_was_deleted = attributes[:'remote_was_deleted']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'field_mappings')
        if (value = attributes[:'field_mappings']).is_a?(Hash)
          self.field_mappings = value
        end
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'remote_data')
        if (value = attributes[:'remote_data']).is_a?(Array)
          self.remote_data = value
        end
      end

      if attributes.key?(:'remote_fields')
        if (value = attributes[:'remote_fields']).is_a?(Array)
          self.remote_fields = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@website.nil? && @website.to_s.length > 2000
        invalid_properties.push('invalid value for "website", the character length must be smaller than or equal to 2000.')
      end

      if !@number_of_employees.nil? && @number_of_employees > 2147483647
        invalid_properties.push('invalid value for "number_of_employees", must be smaller than or equal to 2147483647.')
      end

      if !@number_of_employees.nil? && @number_of_employees < -2147483648
        invalid_properties.push('invalid value for "number_of_employees", must be greater than or equal to -2147483648.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@website.nil? && @website.to_s.length > 2000
      return false if !@number_of_employees.nil? && @number_of_employees > 2147483647
      return false if !@number_of_employees.nil? && @number_of_employees < -2147483648
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] website Value to be assigned
    def website=(website)
      if !website.nil? && website.to_s.length > 2000
        fail ArgumentError, 'invalid value for "website", the character length must be smaller than or equal to 2000.'
      end

      @website = website
    end

    # Custom attribute writer method with validation
    # @param [Object] number_of_employees Value to be assigned
    def number_of_employees=(number_of_employees)
      if !number_of_employees.nil? && number_of_employees > 2147483647
        fail ArgumentError, 'invalid value for "number_of_employees", must be smaller than or equal to 2147483647.'
      end

      if !number_of_employees.nil? && number_of_employees < -2147483648
        fail ArgumentError, 'invalid value for "number_of_employees", must be greater than or equal to -2147483648.'
      end

      @number_of_employees = number_of_employees
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          owner == o.owner &&
          name == o.name &&
          description == o.description &&
          industry == o.industry &&
          website == o.website &&
          number_of_employees == o.number_of_employees &&
          addresses == o.addresses &&
          phone_numbers == o.phone_numbers &&
          last_activity_at == o.last_activity_at &&
          remote_updated_at == o.remote_updated_at &&
          remote_created_at == o.remote_created_at &&
          remote_was_deleted == o.remote_was_deleted &&
          id == o.id &&
          remote_id == o.remote_id &&
          field_mappings == o.field_mappings &&
          modified_at == o.modified_at &&
          remote_data == o.remote_data &&
          remote_fields == o.remote_fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [owner, name, description, industry, website, number_of_employees, addresses, phone_numbers, last_activity_at, remote_updated_at, remote_created_at, remote_was_deleted, id, remote_id, field_mappings, modified_at, remote_data, remote_fields].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MergeCRMClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
