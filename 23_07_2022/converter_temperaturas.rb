def k_to_c(k)
  k.to_f - 273.0
end

def k_to_f(k)
  (k.to_f - 273.0) * 1.8 + 32.0
end

def c_to_k(c)
  c.to_f + 273
end

def c_to_f(c)
  c.to_f * 1.8 + 32.to_f
end

def f_to_c(f)
  (f.to_f - 32.0) / 1.8
end

def f_to_k(f)
  (f.to_f - 32.0) * 5.0 / 9.0 + 273.0
end

menu = <<~MENU
  1 - Kelvin para Celcius
  2 - Kelvin para Fahrenheit
  3 - Celcius para Kelvin
  4 - Celcius para Fahrenheit
  5 - Fahrenheit para Celcius
  6 - Fahrenheit para Kelvin
MENU

puts menu
print '> '
x = gets.chomp.to_i

case x
when 1
  puts 'Digite o valor em Kelvin: '
  y = gets.chomp
  puts "Valor final: #{k_to_c(y)}"
when 2
  puts 'Digite o valor em Kelvin: '
  y = gets.chomp
  puts "Valor final: #{k_to_f(y)}"
when 3
  puts 'Digite o valor em Celcius: '
  y = gets.chomp
  puts "Valor final: #{c_to_k(y)}"
when 4
  puts 'Digite o valor em Celcius: '
  y = gets.chomp
  puts "Valor final: #{c_to_f(y)}"
when 5
  puts 'Digite o valor em Fahrenheit: '
  y = gets.chomp
  puts "Valor final: #{f_to_c(y)}"
when 6
  puts 'Digite o valor em Fahrenheit: '
  y = gets.chomp
  puts "Valor final: #{f_to_k(y)}"
end
