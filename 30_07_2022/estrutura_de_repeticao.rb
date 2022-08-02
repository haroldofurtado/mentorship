system ('tput reset')

# for numero in (5..10)
#   puts "Numero: #{numero * 2}"
# end

# while = enquanto
# uma estrutura de repedição/iteração que enquanto a condição for verdadeira, ele executa
contador = 0

while (contador <= 5)
  puts "Contador: #{contador}"
  contador = contador + 1
end

puts "Uol"

contador = 2

while contador >= 2
  puts "Valor contador: #{contador}"
  contador = contador ** contador
end
