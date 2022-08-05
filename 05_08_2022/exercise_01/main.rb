require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'minitest'
end

require 'minitest/autorun'

class TemperatureCalculatorTest < Minitest::Test
  def test_first
    # Arrange + Act + Assert
    assert TemperatureCalculator
  end

  def test_celsius_to_fahrenheit
    # Arrange
    # celsius to fahrenheit
    celsius = 100
    fahrenheit = 212

    # Act
    result = TemperatureCalculator.celsius_to_fahrenheit(celsius)

    # Assert
    assert_equal(fahrenheit, result)
  end

  def test_celsius_to_kelvin
    celsius = 100
    kelvin = 373.15

    # Act
    result = TemperatureCalculator.celsius_to_kelvin(celsius)

    # Assert
    assert_equal(kelvin, result)
  end

  def test_fahrenheit_to_celsius
    fahrenheit = 212
    celsius = 100

    # Act
    result = TemperatureCalculator.fahrenheit_to_celsius(fahrenheit)

    # Assert
    assert_equal(celsius, result)
  end

  def test_fahrenheit_to_kelvin
    fahrenheit = 212
    kelvin = 373.15

    # Act
    result = TemperatureCalculator.fahrenheit_to_kelvin(fahrenheit)

    # Assert
    assert_equal(kelvin, result)
  end

  def test_kelvin_to_celsius
    kelvin = 373.15
    celsius = 100

    # Act
    result = TemperatureCalculator.kelvin_to_celsius(kelvin)

    # Assert
    assert_equal(celsius, result)
  end

  def test_kelvin_to_fahrenheit
    kelvin = 373.15
    fahrenheit = 212

    # Act
    result = TemperatureCalculator.kelvin_to_fahrenheit(kelvin)

    # Assert
    assert_equal(fahrenheit, result)
  end
end

class TemperatureCalculator
  def self.celsius_to_fahrenheit(a)
    a * Rational(9, 5) + 32
  end

  def self.celsius_to_kelvin(celsius)
    celsius + 273.15
  end
end
