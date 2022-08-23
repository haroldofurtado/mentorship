require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'minitest'
  gem 'debug'
end

require 'minitest/autorun'
require './temperature_calculator'

class TemperatureCalculatorTest < Minitest::Test
  def test_first
    assert TemperatureCalculator
  end

  def test_celsius_to_fahrenheit
    celcius, fahrenheint = 100, 212

    result = TemperatureCalculator.celcius_to_farenheint(celcius)

    assert_equal(fahrenheint, result)
  end

  def test_celsius_to_kelvin
    celcius, kelvin = 100, 373.15

    result = TemperatureCalculator.celcius_to_kelvin(celcius)

    assert_equal(kelvin, result)
  end

  def test_fahrenheit_to_celsius
    fahrenheint, celcius = 212, 100

    result = TemperatureCalculator.fahrenheint_to_celcius(fahrenheint)

    assert_equal(celcius, result)
  end

  def test_fahrenheit_to_kelvin
    fahrenheint, kelvin = 212, 373.15

    result = TemperatureCalculator.fahrenheint_to_kelvin(fahrenheint)

    assert_equal(kelvin, result)
  end

  def test_kelvin_to_celcius
    kelvin, celcius = 373.15, 100

    result = TemperatureCalculator.kelvin_to_celcius(kelvin)

    assert_equal(celcius, result)
  end

  def test_kelvin_to_fahrenheit
    kelvin, fahrenheit = 373.15, 212

    result = TemperatureCalculator.kelvin_to_fahrenheit(kelvin)

    assert_equal(fahrenheit, result)
  end
end