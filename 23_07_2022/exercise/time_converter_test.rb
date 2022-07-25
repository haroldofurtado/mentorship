# temperature_calculator_test.rb.rb
require 'minitest/autorun'
require_relative 'time_converter'

class TimeConverterTest < Minitest::Test
  def test_years_to_months
    # Arrange
    years = 1

    # Act
    result = TimeConverter.new.years_to_months(years)

    # Assert
    assert_equal 12, result
  end

  def test_months_to_days
    # Arrange
    months = 1

    # Act
    result = TimeConverter.new.months_to_days(months)

    # Assert
    assert_equal 30, result
  end

  def test_days_to_hours
    # Arrange
    days = 1

    # Act
    result = TimeConverter.new.days_to_hours(days)

    # Assert
    assert_equal 24, result
  end

  def test_hours_to_minutes
    # Arrange
    hours = 1

    # Act
    result = TimeConverter.new.hours_to_minutes(hours)

    # Assert
    assert_equal 60, result
  end

  def test_minutes_to_seconds
    # Arrange
    minutes = 1

    # Act
    result = TimeConverter.new.minutes_to_seconds(minutes)

    # Assert
    assert_equal 60, result
  end

  def test_seconds_to_minutes
    # Arrange
    seconds = 60

    # Act
    result = TimeConverter.new.seconds_to_minutes(seconds)

    # Assert
    assert_equal 1, result
  end

  def test_minutes_to_hours
    # Arrange
    minutes = 60

    # Act
    result = TimeConverter.new.minutes_to_hours(minutes)

    # Assert
    assert_equal 1, result
  end

  def test_hours_to_days
    # Arrange
    hours = 24

    # Act
    result = TimeConverter.new.hours_to_days(hours)

    # Assert
    assert_equal 1, result
  end

  def test_days_to_months
    # Arrange
    days = 30

    # Act
    result = TimeConverter.new.days_to_months(days)

    # Assert
    assert_equal 1, result
  end

  def test_months_to_years
    # Arrange
    months = 12

    # Act
    result = TimeConverter.new.months_to_years(months)

    # Assert
    assert_equal 1, result
  end
end
