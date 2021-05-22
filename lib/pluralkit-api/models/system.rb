=begin
#PluralKit

#This is the API for [PluralKit](https://pluralkit.me/)! :)  The API itself is stable, but this document (the OpenAPI description) is still subject to change, and may be updated, corrected or restructured in the future (as long as it's still coherent with the real API).  # Authentication Authentication is handled using a \"system token\". At the moment, the only way to obtain a system token is to use the `pk;token` command through the Discord bot.  This will generate an opaque string you must pass as the `Authorization` header to API requests. Many API endpoints are available anonymously, but most of them will hide information from  unauthenticated requests to align with the relevant privacy settings.  # Errors Errors are just returned as HTTP response codes. Most error responses include a human-readable error message as the body, but this should not be relied on. Just read the response codes :)  # OpenAPI version history - **1.1**: Granular member privacy - **1.0**: (initial definition version) 

The version of the OpenAPI document: 1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-SNAPSHOT

=end

require 'date'
require 'time'

module PluralKitAPI
  class System
    # A unique identifier for a system or a member, as a randomly generated string of five lowercase letters.  These IDs are guaranteed to be globally unique for the given model type (a system can have the same ID as a member, but two systems or two members can never share an ID).  The IDs can on rare occasions change - eg. if a profane word is generated and later regenerated, or as a potential future Patreon perk. However, it's still reasonable to assume that the IDs are constant, and that tey won't change without the user's knowledge, so it's safe to store in things like settings menus and config files. 
    attr_accessor :id

    # The user-provided name of the system.
    attr_accessor :name

    # The user-provided system description.  May contain rich text in Markdown, including standard Markdown-formatted links, or Discord-formatted emoji/user/channel references. 
    attr_accessor :description

    # The system tag, which is appended to the names (or display names, if set) of members when proxying through the bot.  A space will automatically be inserted between the name and the tag, so no need to include one at the start.  The character limit here is 78, as Discord's name length limit for webhooks is 80 characters. A 78-character system tag is thus the longest tag that can still accomodate a single-letter member name and the separating space. 
    attr_accessor :tag

    # A link to the avatar/icon of the system.  If used for proxying, the image must be at most 1000 pixels in width *and* height, and at most 1 MiB in size. This restriction is on Discord's end and is not verified through the API (it's simply stored as a string). 
    attr_accessor :avatar_url

    # The system's registered time zone as an Olson time zone ID.  This is used in the bot to convert various time stamps in commands on behalf of this system. 
    attr_accessor :tz

    # The creation timestamp of the system.
    attr_accessor :created

    attr_accessor :description_privacy

    attr_accessor :member_list_privacy

    attr_accessor :front_privacy

    attr_accessor :front_history_privacy

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'description' => :'description',
        :'tag' => :'tag',
        :'avatar_url' => :'avatar_url',
        :'tz' => :'tz',
        :'created' => :'created',
        :'description_privacy' => :'description_privacy',
        :'member_list_privacy' => :'member_list_privacy',
        :'front_privacy' => :'front_privacy',
        :'front_history_privacy' => :'front_history_privacy'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'tag' => :'String',
        :'avatar_url' => :'String',
        :'tz' => :'String',
        :'created' => :'Time',
        :'description_privacy' => :'PrivacySetting',
        :'member_list_privacy' => :'PrivacySetting',
        :'front_privacy' => :'PrivacySetting',
        :'front_history_privacy' => :'PrivacySetting'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'description',
        :'tag',
        :'avatar_url',
        :'tz',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PluralKitAPI::System` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PluralKitAPI::System`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.key?(:'avatar_url')
        self.avatar_url = attributes[:'avatar_url']
      end

      if attributes.key?(:'tz')
        self.tz = attributes[:'tz']
      else
        self.tz = 'UTC'
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'description_privacy')
        self.description_privacy = attributes[:'description_privacy']
      end

      if attributes.key?(:'member_list_privacy')
        self.member_list_privacy = attributes[:'member_list_privacy']
      end

      if attributes.key?(:'front_privacy')
        self.front_privacy = attributes[:'front_privacy']
      end

      if attributes.key?(:'front_history_privacy')
        self.front_history_privacy = attributes[:'front_history_privacy']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@id.nil? && @id.to_s.length > 5
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 5.')
      end

      if !@id.nil? && @id.to_s.length < 5
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 5.')
      end

      pattern = Regexp.new(/^[a-z]{5}$/)
      if !@id.nil? && @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      if !@name.nil? && @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      if !@description.nil? && @description.to_s.length > 1000
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 1000.')
      end

      if !@tag.nil? && @tag.to_s.length > 78
        invalid_properties.push('invalid value for "tag", the character length must be smaller than or equal to 78.')
      end

      if !@avatar_url.nil? && @avatar_url.to_s.length > 256
        invalid_properties.push('invalid value for "avatar_url", the character length must be smaller than or equal to 256.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id.to_s.length > 5
      return false if !@id.nil? && @id.to_s.length < 5
      return false if !@id.nil? && @id !~ Regexp.new(/^[a-z]{5}$/)
      return false if !@name.nil? && @name.to_s.length > 100
      return false if !@description.nil? && @description.to_s.length > 1000
      return false if !@tag.nil? && @tag.to_s.length > 78
      return false if !@avatar_url.nil? && @avatar_url.to_s.length > 256
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if !id.nil? && id.to_s.length > 5
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 5.'
      end

      if !id.nil? && id.to_s.length < 5
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 5.'
      end

      pattern = Regexp.new(/^[a-z]{5}$/)
      if !id.nil? && id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 100
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 100.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 1000
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 1000.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] tag Value to be assigned
    def tag=(tag)
      if !tag.nil? && tag.to_s.length > 78
        fail ArgumentError, 'invalid value for "tag", the character length must be smaller than or equal to 78.'
      end

      @tag = tag
    end

    # Custom attribute writer method with validation
    # @param [Object] avatar_url Value to be assigned
    def avatar_url=(avatar_url)
      if !avatar_url.nil? && avatar_url.to_s.length > 256
        fail ArgumentError, 'invalid value for "avatar_url", the character length must be smaller than or equal to 256.'
      end

      @avatar_url = avatar_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          tag == o.tag &&
          avatar_url == o.avatar_url &&
          tz == o.tz &&
          created == o.created &&
          description_privacy == o.description_privacy &&
          member_list_privacy == o.member_list_privacy &&
          front_privacy == o.front_privacy &&
          front_history_privacy == o.front_history_privacy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, description, tag, avatar_url, tz, created, description_privacy, member_list_privacy, front_privacy, front_history_privacy].hash
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
        klass = PluralKitAPI.const_get(type)
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