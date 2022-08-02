require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem "minitest"
  gem 'pry'
end

require 'minitest/autorun'

class MainTest < Minitest::Test
  # Dado um array de inteiros, numbers, e um inteiro alvo, retorne os indices dos dois números
  # que na sua soma são válidos para o alvo.

  def test_first_test
    # Arrange
    numbers = [2, 7, 11, 15]
    target = 9

    # Act
    result = Main.new.two_sum(numbers, target)

    # Assert
    assert_equal([0, 1], result)
  end

  def test_second_test
    # Arrange
    numbers = [3, 2, 4]
    target = 6

    # Act
    result = Main.new.two_sum(numbers, target)

    # Assert
    assert_equal([1, 2], result)
  end

  def test_third_test
    skip
    # Arrange
    numbers = [3, 3]
    target = 6

    # Act
    result = Main.new.two_sum(numbers, target)

    # Assert
    assert_equal([0, 1], result)
  end
end

############################ Inicia aqui! ############################

class Main
  def two_sum(nums, target)
    has={}
    nums.each_with_index do |num, index|
      return [has[target - num], index] if has[target - num]
      has[num] = index
    end
  end
end
