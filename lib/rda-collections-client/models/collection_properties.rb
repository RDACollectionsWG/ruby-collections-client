=begin
#RDA Collections API

#API Strawman for RDA Research Data Collections WG

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module CollectionsClient
  # Functional Properties of the Collection
  class CollectionProperties
    # Indicates the owner of the Collection. Implementation is expected to use a controlled vocabulary or PIDs.
    attr_accessor :ownership

    # Indicates the license that applies to the Collection. Implementation is expected to use a controlled vocabulary, stable URIs or PIDs of registered data types. 
    attr_accessor :license

    # Identifies the model that the collection adheres to. Iimplementation is expected to use a controlled vocabulary, or PIDs of registered data types. 
    attr_accessor :model_type

    # Indicates whether the collection is fully open or has access restrictions. 
    attr_accessor :has_access_restrictions

    # If provided, this is a list of collection identifiers to which this collection itself belongs. This property is only meaningful if the service features supports a  maximumExpansionDepth > 0.
    attr_accessor :member_of

    # Identifies the ontology used for descriptive metadata. Implementation is expected to supply the URI of a controlled vocabulary.
    attr_accessor :description_ontology


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ownership' => :'ownership',
        :'license' => :'license',
        :'model_type' => :'modelType',
        :'has_access_restrictions' => :'hasAccessRestrictions',
        :'member_of' => :'memberOf',
        :'description_ontology' => :'descriptionOntology'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'ownership' => :'String',
        :'license' => :'String',
        :'model_type' => :'String',
        :'has_access_restrictions' => :'BOOLEAN',
        :'member_of' => :'Array<String>',
        :'description_ontology' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ownership')
        self.ownership = attributes[:'ownership']
      end

      if attributes.has_key?(:'license')
        self.license = attributes[:'license']
      end

      if attributes.has_key?(:'modelType')
        self.model_type = attributes[:'modelType']
      end

      if attributes.has_key?(:'hasAccessRestrictions')
        self.has_access_restrictions = attributes[:'hasAccessRestrictions']
      else
        self.has_access_restrictions = false
      end

      if attributes.has_key?(:'memberOf')
        if (value = attributes[:'memberOf']).is_a?(Array)
          self.member_of = value
        end
      end

      if attributes.has_key?(:'descriptionOntology')
        self.description_ontology = attributes[:'descriptionOntology']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @ownership.nil?
      return false if @license.nil?
      return false if @model_type.nil?
      return false if @has_access_restrictions.nil?
      return false if @description_ontology.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ownership == o.ownership &&
          license == o.license &&
          model_type == o.model_type &&
          has_access_restrictions == o.has_access_restrictions &&
          member_of == o.member_of &&
          description_ontology == o.description_ontology
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [ownership, license, model_type, has_access_restrictions, member_of, description_ontology].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CollectionsClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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