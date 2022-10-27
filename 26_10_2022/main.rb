# frozen_string_literal: true

require 'httparty'

require_relative 'hero'

class GetHeroes
  def initialize
    self.base_url = 'https://api.opendota.com'
    self.path = '/api/heroStats'
  end

  def retrieve_heroes
    fetch_all.map do |raw_hero|
      Hero.new(filtered_response(raw_hero), base_url)
    end
  end

  def filtered_response(raw_hero)
    {
      name: raw_hero['localized_name'],
      remote_image: "#{base_url}#{raw_hero['img']}",
      primary_attribute: raw_hero['primary_attr'],
      attack_type: raw_hero['attack_type'],
      roles: raw_hero['roles'],
      raw: raw_hero
    }
  end

  def fetch_all
    HTTParty.get("#{base_url}#{path}")
  end

  private

  attr_accessor :base_url, :path
end
