notas = Hash.new 0
notas[:Inglês] = 50
notas[:Matemática] = 70
notas[:Ciências] = 75

print "Entre com o nome da matéria:"
materia = gets.chomp.to_sym

puts "Nota de #{materia.to_s} é: #{notas[materia.to_sym]}"
