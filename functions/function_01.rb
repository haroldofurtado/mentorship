puts 'Digite o seu nome: '
nome = gets.chomp

puts 'Digite o seu sobrenome: '
sobrenome = gets.chomp

puts 'Digite sua idade: '
idade = gets.chomp.to_i

puts 'Digite sua altura: '
altura = gets.chomp.to_f

puts 'Digite seu peso: '
peso = gets.chomp.to_f

def imprime_linha(tamanho)
  puts '_' * tamanho
end

def nome_completo(nome, sobrenome)
  "#{nome} #{sobrenome}"
end

def validador_idade(idade)
  case idade
  when (...18)
    'Menor de idade.'
  when (18..)
    'Maior de idade.'
  end
end

def imc(peso, altura)
  peso / (altura * altura)
end

prontuario = <<~PRONT
  Nome Completo: #{nome_completo(nome, sobrenome)}
  Idade: #{idade}. #{validador_idade(idade)}
  IMC: #{imc(peso, altura)}
PRONT

imprime_linha(200)
imprime_linha(200)
puts prontuario
