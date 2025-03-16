# frozen_string_literal: true

require "adif/record"

module ADIF
  class Log
    include Enumerable

    attr_accessor :adif_version, :program_id, :program_version, :records

    def initialize(adif_version: "3.1.5", program_id: "adifrb", program_version: ADIF::VERSION, records: [])
      @adif_version = adif_version
      @program_id = program_id
      @program_version = program_version
      @records = records
    end

    def self.parse(adif_string)
      records = [Record.new]

      adif_string.scan(/<(\w+):?(\d+)?>([^<]*)/) do |key, length, value|
        records.last[key.downcase.to_sym] = value.strip
        if key.downcase == "eor"
          records << Record.new
        end
      end

      # Remove trailing empty record
      records.pop if records.last.empty?

      Log.new(records: records)
    end

    def header
      [
        adif_field("adif_ver", "3.1.5"),
        adif_field("created_timestamp", Time.now.utc),
        adif_field("programid", program_id),
        adif_field("programversion", program_version),
        terminator
      ].join
    end

    def terminator
      "<EOH>"
    end

    def adif_field(name, value)
      "<#{name.upcase}:#{value.to_s.length}>#{value.to_s} "
    end

    def to_adif
      ([header] + sorted_records.map(&:to_adif)).join("\n")
    end

    def to_uniq_adif
      ([header] + uniq_records.map(&:to_adif)).join("\n")
    end

    def sorted_records
      records.sort do |a, b|
        a.qso_date + a.time_on <=> b.qso_date + b.time_on
      end
    end

    def uniq_records
      records.uniq(&:uniqueness)
    end
  end
end
