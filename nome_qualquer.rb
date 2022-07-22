def diametro(raio)
  2 * raio
end

puts 'Digite o valor: '
puts diametro(gets.chomp.to_f)

def nome
  puts 'Digite o seu nome: '
  gets.chomp
end

def sobrenome
  puts 'Digite o seu sobrenome: '
  gets.chomp
end

def nome_completo(a = nome, b = sobrenome)
  puts "#{a} #{b}"
end
