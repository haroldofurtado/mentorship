nome = 'Linguagem Ruby'
isbn = '123-45675614-02'
numero_de_paginas = 256
preco = 69.90

desconto = 0.1

preco_com_desconto = (preco - (preco * desconto))

def preco_com_desconto(preco, desconto)
  preco - (preco * desconto)
end

def preco_com_desconto_v2(preco, desconto = 10)
  percentual = desconto / 100.to_f
  preco - (preco * percentual)
end

def preco_com_acrecimo(preco, percentual_acrescimo)
  preco * (1 + percentual_acrescimo / 100.to_f)
end




def calcular_preco_livro(nome, isbn, numero_de_paginas, preco, desconto = 0.1)

end


def soma(a = 10, b)
  a + b
end

def multiplica_string(string, inteiro)
  string * inteiro
end

def preco_com_desconto_v2(preco, desconto)
  percentual = desconto / 100.to_f
  preco - (preco * percentual)
end
