require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem "minitest"
end

require 'minitest/autorun'

class MainTest < Minitest::Test
  def test_first_test
    a = 5
    b = 5

    result = Main.new.sum(a, b)

    assert_equal(10, result)
  end
end

############# Inicia aqui! #############

class Main
 def sum(x, y)
  x + y
 end
end
