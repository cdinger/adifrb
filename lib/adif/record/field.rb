# frozen_string_literal: true

module ADIF
  class Record
    class Field
      attr_reader :key, :value

      def initialize(key, value)
        @key = key
        @value = value
      end

      def to_adif
        "<#{@key.upcase}:#{value.to_s.length}>#{value} "
      end
    end
  end
end
