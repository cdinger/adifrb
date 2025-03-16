# frozen_string_literal: true

module ADIF
  class Log
    class Header
      FIELDS = %w(
        adif_ver
        created_timestamp
        programid
        programversion
        userdefn
      )
    end
  end
end
