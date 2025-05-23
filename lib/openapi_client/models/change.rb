=begin
#Streaming Availability API

#Streaming Availability API allows getting streaming availability information of movies and series; and querying the list of available shows on streaming services such as Netflix, Disney+, Apple TV, Max and Hulu across 60 countries!

The version of the OpenAPI document: 4.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.13.0

=end

require 'date'
require 'time'

module OpenapiClient
  # A change object represents a future or past change in a streaming catalog. It contains the details such as the type of the change (could be past change such as like new, updated, removed; or a future change such as expiring, upcoming), the affected item type (show, season or episode), timestamp of the change and more.  Via change endpoints, you can get the most recent updates in the streaming catalogs. On top of the changes, you can also get the details of the affected shows. Every change object has a showId field. You can find the list of shows affected by the changes in the shows field of the response, and match the show ids with the showId field of the change objects. 
  class Change
    # Type of the change.
    attr_accessor :change_type

    # Type of the item affected from the change.
    attr_accessor :item_type

    # Id of the show affected from the change.
    attr_accessor :show_id

    # Type of the show affected from the change.
    attr_accessor :show_type

    # Number of the season affected from the change. Omitted if item_type is not seasonor episode.
    attr_accessor :season

    # Number of the episode affected from the change. Omitted if item_type is not episode.
    attr_accessor :episode

    # Service affected from the change.
    attr_accessor :service

    attr_accessor :streaming_option_type

    # Addon info, if the streamingOptionType is addon. Otherwise omitted.
    attr_accessor :addon

    # [Unix Time Stamp](https://www.unixtimestamp.com/) of the change. Past changes (new, updated, removed) will always have a timestamp. Future changes (expiring, upcoming) will have a timestamp if the exact date is known. If not, timestamp will be omitted, e.g. a show is known to be expiring soon, but the exact date is not known. 
    attr_accessor :timestamp

    # Deep link to the affected streaming option's page in the web app of the streaming service. This field is guaranteed to be populated when changeType is new, updated, expiring or removed. When changeType is upcoming, this field might be populated or null depending on if the link of the future streaming option is known. 
    attr_accessor :link

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'change_type' => :'changeType',
        :'item_type' => :'itemType',
        :'show_id' => :'showId',
        :'show_type' => :'showType',
        :'season' => :'season',
        :'episode' => :'episode',
        :'service' => :'service',
        :'streaming_option_type' => :'streamingOptionType',
        :'addon' => :'addon',
        :'timestamp' => :'timestamp',
        :'link' => :'link'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'change_type' => :'ChangeType',
        :'item_type' => :'ItemType',
        :'show_id' => :'String',
        :'show_type' => :'ShowType',
        :'season' => :'Integer',
        :'episode' => :'Integer',
        :'service' => :'ServiceInfo',
        :'streaming_option_type' => :'StreamingOptionType',
        :'addon' => :'Addon',
        :'timestamp' => :'Integer',
        :'link' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Change` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Change`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'change_type')
        self.change_type = attributes[:'change_type']
      else
        self.change_type = nil
      end

      if attributes.key?(:'item_type')
        self.item_type = attributes[:'item_type']
      else
        self.item_type = nil
      end

      if attributes.key?(:'show_id')
        self.show_id = attributes[:'show_id']
      else
        self.show_id = nil
      end

      if attributes.key?(:'show_type')
        self.show_type = attributes[:'show_type']
      else
        self.show_type = nil
      end

      if attributes.key?(:'season')
        self.season = attributes[:'season']
      end

      if attributes.key?(:'episode')
        self.episode = attributes[:'episode']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      else
        self.service = nil
      end

      if attributes.key?(:'streaming_option_type')
        self.streaming_option_type = attributes[:'streaming_option_type']
      else
        self.streaming_option_type = nil
      end

      if attributes.key?(:'addon')
        self.addon = attributes[:'addon']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'link')
        self.link = attributes[:'link']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @change_type.nil?
        invalid_properties.push('invalid value for "change_type", change_type cannot be nil.')
      end

      if @item_type.nil?
        invalid_properties.push('invalid value for "item_type", item_type cannot be nil.')
      end

      if @show_id.nil?
        invalid_properties.push('invalid value for "show_id", show_id cannot be nil.')
      end

      if @show_type.nil?
        invalid_properties.push('invalid value for "show_type", show_type cannot be nil.')
      end

      if @service.nil?
        invalid_properties.push('invalid value for "service", service cannot be nil.')
      end

      if @streaming_option_type.nil?
        invalid_properties.push('invalid value for "streaming_option_type", streaming_option_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @change_type.nil?
      return false if @item_type.nil?
      return false if @show_id.nil?
      return false if @show_type.nil?
      return false if @service.nil?
      return false if @streaming_option_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] change_type Value to be assigned
    def change_type=(change_type)
      if change_type.nil?
        fail ArgumentError, 'change_type cannot be nil'
      end

      @change_type = change_type
    end

    # Custom attribute writer method with validation
    # @param [Object] item_type Value to be assigned
    def item_type=(item_type)
      if item_type.nil?
        fail ArgumentError, 'item_type cannot be nil'
      end

      @item_type = item_type
    end

    # Custom attribute writer method with validation
    # @param [Object] show_id Value to be assigned
    def show_id=(show_id)
      if show_id.nil?
        fail ArgumentError, 'show_id cannot be nil'
      end

      @show_id = show_id
    end

    # Custom attribute writer method with validation
    # @param [Object] show_type Value to be assigned
    def show_type=(show_type)
      if show_type.nil?
        fail ArgumentError, 'show_type cannot be nil'
      end

      @show_type = show_type
    end

    # Custom attribute writer method with validation
    # @param [Object] service Value to be assigned
    def service=(service)
      if service.nil?
        fail ArgumentError, 'service cannot be nil'
      end

      @service = service
    end

    # Custom attribute writer method with validation
    # @param [Object] streaming_option_type Value to be assigned
    def streaming_option_type=(streaming_option_type)
      if streaming_option_type.nil?
        fail ArgumentError, 'streaming_option_type cannot be nil'
      end

      @streaming_option_type = streaming_option_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          change_type == o.change_type &&
          item_type == o.item_type &&
          show_id == o.show_id &&
          show_type == o.show_type &&
          season == o.season &&
          episode == o.episode &&
          service == o.service &&
          streaming_option_type == o.streaming_option_type &&
          addon == o.addon &&
          timestamp == o.timestamp &&
          link == o.link
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [change_type, item_type, show_id, show_type, season, episode, service, streaming_option_type, addon, timestamp, link].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
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
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
