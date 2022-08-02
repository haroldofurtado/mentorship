require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem "minitest"
end

require 'minitest/autorun'

class MainTest < Minitest::Test
  def test_first
    # Arrange + Act + Assert
    assert Main
  end

  def test_second
    # Arrange
    height = 100
    # Act + Assert
    assert Main.new(height)
  end

  def test_third
    # Arrange
    height = 100

    # Act
    result = Main.new(height).height

    # Assert
    assert_equal(height, result)
  end

  def test_fourth
    # Arrange
    height = 100

    # Act + Assert
    assert_nil Main.new(height).pass_id
  end

  def test_fifth
    # Arrange
    height = 100
    pass_id = 1
    obj = Main.new(height)

    # Act
    result = obj.issue_pass!(pass_id)

    # Assert
    assert_equal pass_id, result
  end

  def test_sixth
    # Assert
    height = 100
    pass_id = 1
    obj = Main.new(height)

    # Act
    obj.issue_pass!(pass_id)
    obj.revoke_pass!

    # Assert
    refute obj.pass_id
  end
end

class Main

end
