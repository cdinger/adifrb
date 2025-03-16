# frozen_string_literal: true

module ADIF
  class Record
    module Fields
      FIELDS = {
        # https://adif.org/315/ADIF_315.htm
        "3.1.5" => %w(
          call
          mode
          band
          qso_date
          time_on
          address
          address_intl
          age
          altitude
          ant_az
          ant_el
          ant_path
          arrl_sect
          award_submitted
          award_granted
          a_index
          band
          band_rx
          call
          check
          class
          clublog_qso_upload_date
          clublog_qso_upload_status
          cnty
          cnty_alt
          comment
          comment_intl
          cont
          contacted_op
          contest_id
          country
          country_intl
          cqz
          credit_submitted
          credit_granted
          darc_dok
          dcl_qslrdate
          dcl_qslsdate
          dcl_qsl_rcvd
          dcl_qsl_sent
          distance
          dxcc
          email
          eq_call
          eqsl_qslrdate
          eqsl_qslsdate
          eqsl_qsl_rcvd
          eqsl_qsl_sent
          fists
          fists_cc
          force_init
          freq
          freq_rx
          gridsquare
          gridsquare_ext
          guest_op
          hamlogeu_qso_upload_date
          hamlogeu_qso_upload_status
          hamqth_qso_upload_date
          hamqth_qso_upload_status
          hrdlog_qso_upload_date
          hrdlog_qso_upload_status
          iota
          iota_island_id
          ituz
          k_index
          lat
          lon
          lotw_qslrdate
          lotw_qslsdate
          lotw_qsl_rcvd
          lotw_qsl_sent
          max_bursts
          mode
          morse_key_info
          morse_key_type
          ms_shower
          my_altitude
          my_antenna
          my_antenna_intl
          my_arrl_sect
          my_city
          my_city_intl
          my_cnty
          my_cnty_alt
          my_country
          my_country_intl
          my_cq_zone
          my_darc_dok
          my_dxcc
          my_fists
          my_gridsquare
          my_gridsquare_ext
          my_iota
          my_iota_island_id
          my_itu_zone
          my_lat
          my_lon
          my_morse_key_info
          my_morse_key_type
          my_name
          my_name_intl
          my_postal_code
          my_postal_code_intl
          my_pota_ref
          my_rig
          my_rig_intl
          my_sig
          my_sig_intl
          my_sig_info
          my_sig_info_intl
          my_sota_ref
          my_state
          my_street
          my_street_intl
          my_usaca_counties
          my_vucc_grids
          my_wwff_ref
          name
          name_intl
          notes
          notes_intl
          nr_bursts
          nr_pings
          operator
          owner_callsign
          pfx
          pota_ref
          precedence
          prop_mode
          public_key
          qrzcom_qso_download_date
          qrzcom_qso_download_status
          qrzcom_qso_upload_date
          qrzcom_qso_upload_status
          qslmsg
          qslmsg_intl
          qslmsg_rcvd
          qslrdate
          qslsdate
          qsl_rcvd
          qsl_rcvd_via
          qsl_sent
          qsl_sent_via
          qsl_via
          qso_complete
          qso_date
          qso_date_off
          qso_random
          qth
          qth_intl
          region
          rig
          rig_intl
          rst_rcvd
          rst_sent
          rx_pwr
          sat_mode
          sat_name
          sfi
          sig
          sig_intl
          sig_info
          sig_info_intl
          silent_key
          skcc
          sota_ref
          srx
          srx_string
          state
          station_callsign
          stx
          stx_string
          submode
          swl
          ten_ten
          time_off
          time_on
          tx_pwr
          uksmg
          usaca_counties
          ve_prov
          vucc_grids
          web
          wwff_ref
        ).map(&:to_sym)
      }
    end
  end
end
