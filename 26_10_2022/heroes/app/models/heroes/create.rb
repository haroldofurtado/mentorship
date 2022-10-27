# frozen_string_literal: true
# frozen_string_literal: true

module Heroes
  class Create
    private_class_method :new

    def self.call
      new.call
    end

    def call
      arr_of_heroes = ImportFromApi.call

      to_be_filtered = Hero.pluck(:name)

      new_arr_of_heroes = arr_of_heroes.reject { |x| x[:name].in?(to_be_filtered) }

      new_arr_of_heroes.each do |hero|
        Hero.create(hero)
      end
    end
  end
end
