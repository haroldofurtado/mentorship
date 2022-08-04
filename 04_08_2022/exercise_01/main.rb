require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'minitest'
end

require 'minitest/autorun'

class CarroTest < Minitest::Test
  def test_first
    # Arrange + Act + Assert
    assert Carro
  end

  def test_second
    # Arrange => Arrumar, preparar, organizar
    marca = 'Fiat'
    modelo = 'Punto'
    cor = 'Branco'
    tanque = 35.0

    # Act => ação, agir
    carro_1 = Carro.new(marca, modelo, cor, tanque)

    # Assert => seja igual
    assert carro_1.instance_of?(Carro)
  end

  def test_third
    # Arrange => Arrumar, preparar, organizar
    marca = 'Fiat'
    modelo = 'Punto'
    cor = 'Branco'
    tanque = 35.0

    # Act => ação, agir
    result = Carro.new(marca, modelo, cor, tanque)

    assert_equal(marca, result.marca)
    assert_equal(modelo, result.modelo)
    assert_equal(cor, result.cor)
    assert_equal(tanque, result.tanque)
  end

  def test_fourth
    # Arrange => Arrumar, preparar, organizar
    marca = 'Fiat'
    modelo = 'Punto'
    cor = 'Branco'
    tanque = 35.0

    # Act => ação, agir
    result = Carro.new(marca, modelo, cor, tanque)
    result.marca = 'Ford'
    result.modelo = 'Corsa'
    result.cor = 'Rosa'
    result.tanque = 40

    assert_equal('Ford', result.marca)
    assert_equal('Corsa', result.modelo)
    assert_equal('Rosa', result.cor)
    assert_equal(40, result.tanque)
  end

  def test_fifth
    # Arrange => Arrumar, preparar, organizar
    marca = 'Fiat'
    modelo = 'Punto'
    cor = 'Branco'
    tanque = 35.0

    foo = <<~HEREDOC
      A marca do carro é: #{marca}
      O modelo do carro é: #{modelo}
      A cor do carro é: #{cor}
      A capacidade em litros: #{tanque}
    HEREDOC

    # Act => ação, agir
    result = Carro.new(marca, modelo, cor, tanque)

    # Assert
    assert_equal(foo, result.information)
  end
end

class Carro

end
