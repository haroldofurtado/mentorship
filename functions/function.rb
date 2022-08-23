# entrada = matéria prima
# processamento = processamento
# saída = produto final

def soma(primeiro, segundo)
  primeiro + segundo
end

resultado = soma(5, 10)

puts resultado

def nome_completo(nome, sobrenome) # <=
  "#{nome} #{sobrenome}"
end

puts nome_completo('Haroldo', 'Furtado')

def imprime_linha(tamanho)
  puts '_' * tamanho
end

imprime_linha(200)

puts nome_completo("Borboleta", "Azul Asiática")



def dois_valores(a, b)
  soma(a, b)
end

puts dois_valores(10, 10)
