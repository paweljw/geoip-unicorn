# frozen_string_literal: true

require 'singleton'

class Geo
  extend Forwardable
  include Singleton

  def lookup(ip)
    (database.lookup(ip) || {}).dig('country', 'iso_code') || 'XX'
  end

  def close
    database.close if database
    @database = nil
  end

  def open
    @database ||= Hive::GeoIP2.new('./vendor/geolite2-country/GeoLite2-Country.mmdb')
  end

  private

  def database
    @database ||= open
  end
end
