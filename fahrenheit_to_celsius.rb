def fahrenheit_to_celsius(f)
  (f.to_f - 32.to_f) * 5.to_f / 9.to_f
end
puts ARGV.class
p ARGV
primeiro_elemento = ARGV[0]

puts "De Fahrenheit para Celsius: #{fahrenheit_to_celsius(primeiro_elemento).round(4)}"
