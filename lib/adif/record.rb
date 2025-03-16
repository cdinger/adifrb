# frozen_string_literal: true

require "adif/record/fields"
require "adif/record/field"
require "json"

module ADIF
  class Record
    include Fields

    def initialize(data = {})
      @data = data
    end

    def [](key)
      @data[key].value
    end

    def []=(key, value)
      @data[key] = value
    end

    def empty?
      @data.empty?
    end

    def fields
      key_fields + nonkey_fields
    end

    def key_fields
      [:call, :mode, :band, :qso_date, :time_on]
    end

    def nonkey_fields
      FIELDS["3.1.5"] - key_fields
    end

    def uniqueness
      key_fields.map { @data[it] }.join("")
    end

    def unique_key
      uniqueness
    end

    def terminator
      "<EOR>"
    end

    def field_adif(field)
      "<#{field.upcase}:#{@data[field].to_s.length}>#{@data[field]}"
    end

    def to_adif
      fields.map do |field|
        field_adif(field) unless @data[field].nil?
      end.compact.join(" ") + " #{terminator}"
    end

    def to_json
      JSON.generate(@data)
    end

    def method_missing(name, *args, &block)
      if fields.include?(name)
        @data[name]
      else
        super
      end
      if @data.has_key?(name)
        @data[name]
      else
        raise ArgumentError.new("Method `#{m}` doesn't exist.")
      end
    end

    def respond_to_missing?(name, include_private = false)
      fields.include?(name) || super
    end
  end
end
