class TemperatureCalculator
  class << self
    def celcius_to_farenheint(celcius)
      celcius * 1.8 + 32
    end

    def celcius_to_kelvin(celcius)
      celcius + 273.15
    end

    def fahrenheint_to_celcius(fahrenheint)
      (fahrenheint - 32) * 5/9
    end

    def fahrenheint_to_kelvin(fahrenheint)
      (fahrenheint - 32) / 1.8 + 273.15
    end

    def kelvin_to_celcius(kelvin)
      kelvin - 273.15
    end

    def kelvin_to_fahrenheit(kelvin)
      (kelvin - 273.15) * 1.8 + 32
    end
  end
end