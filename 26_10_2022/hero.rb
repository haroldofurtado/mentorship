# frozen_string_literal: true

class Hero
  attr_reader :name, :remote_image, :primary_attribute, :attack_type, :roles

  def initialize(raw_hero, base_url)
    self.name = raw_hero[:name]
    self.remote_image = "#{base_url}#{raw_hero[:img]}"
    self.primary_attribute = raw_hero[:primary_attribute]
    self.attack_type = raw_hero[:attack_type]
    self.roles = raw_hero[:roles]
    self.raw = raw_hero
  end

  private

  attr_writer :name, :remote_image, :primary_attribute, :attack_type, :roles, :raw
end
