# frozen_string_literal: true

module Heroes
  class ImportFromApi
    BASE_URL = 'https://api.opendota.com'
    PATH = '/api/heroStats'

    private_class_method :new

    def self.call
      new.call
    end

    def call
      retrieve_heroes
    end

    private

    def retrieve_heroes
      fetch_all.map do |raw_hero|
        filtered_response(raw_hero)
      end
    end

    def filtered_response(raw_hero)
      {
        name: raw_hero['localized_name'],
        remote_image: "#{BASE_URL}#{raw_hero['img']}",
        primary_attribute: raw_hero['primary_attr'],
        attack_type: raw_hero['attack_type'],
        roles: raw_hero['roles']
      }
    end

    def fetch_all
      HTTParty.get("#{BASE_URL}#{PATH}")
    end
  end
end
