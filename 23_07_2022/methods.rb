def calcula_valor_adicional(valor, percentual)
  valor * percentual / 100
end

def calcula_valor_final(valor, percentual)
  valor + calcula_valor_adicional(valor, percentual)
end

puts 'Digite o valor da conta: '
x = gets.chomp.to_f
puts 'Digite o percentual a ser adicionado: '
y = gets.chomp.to_f

puts "O valor adicional a ser pago é de: R$ #{calcula_valor_adicional(x, y)}"
puts "Valor final da conta: R$ #{calcula_valor_final(x, y).round(2)}"
