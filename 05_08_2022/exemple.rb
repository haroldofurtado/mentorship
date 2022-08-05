require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'minitest'
end

require 'minitest/autorun'

class Carro
  def liga
    puts "Eu estou ligado!"
  end
end

class Carro
  def desliga
    puts "Eu estou desligado!"
  end
end

class Carro
  remove_method :desliga
end

class String
  def ola
    puts "Olá mundo!"
  end
end

class String
  def to_i
    puts "Opa! Eu não sei mais me converter para inteiro!"
  end
end

class CarroTest < Minitest::Test
  def test_first
    # Arrange + Act + Assert
    carro = Carro.new
    carro.liga
    carro.desliga

    "asdasdasdsadsads".ola
    "10".to_i
    "20".to_i
  end
end



