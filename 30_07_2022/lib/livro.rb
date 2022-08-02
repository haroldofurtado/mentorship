class Pessoa
  def initialize(nome, sobrenome, peso, idade, altura)
    @nome = nome
    @sobrenome = sobrenome
    @peso = peso.to_f
    @idade = idade.to_i
    @altura = altura / 100.0
  end

  attr_accessor :nome, :sobrenome, :peso, :idade, :altura

  def imc
    @peso / (@altura * @altura)
  end
end

pessoa = Pessoa.new("Haroldo", "Furtado", 90.0, 33, 175)

pessoa.imc
pessoa.nome
pessoa.nome = "Patrick"
pessoa.nome
