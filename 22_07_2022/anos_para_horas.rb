def anos_horas(input)
  anos = input[0]
  dias = anos.to_i * 365
  horas = dias * 24
  puts "#{anos} anos possui #{horas} horas!"
end

anos_horas(ARGV)
