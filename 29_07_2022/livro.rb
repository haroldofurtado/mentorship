# propriedades
# métodos
class Cachorro
  def initialize(nome, raca)
    @nome = nome
    @raca = raca
  end

  attr_reader :nome, :raca

  def nome=(value)
    @nome = value
  end

  def raca=(a)
    @raca = a
  end
end

cachorrinho = Cachorro.new("Mirana", "Tigre")
