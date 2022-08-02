# o método é criado a partir da declaração da palavra reservada "def" seguido do seu nome, podendo ter argumentos ou não, uma sequencia de passos a serem executados e o seu encerramento utilizando o end

def falar()
  puts "Olá mundo!"
end

# falar

def soma(a, b)
  a + b
end

puts soma(10, 20)

# métodos posicionais
def dividir(x, y)
  x.to_f / y.to_f
end

puts "O resultado da divisão: #{dividir(10, 20)}"

# keywords arguments, métodos nomeados
def divisor(dividendo:, divisor:)
  dividendo / divisor
end

puts "O resultado da divisão: #{divisor(dividendo: 20, divisor: 10)}"

