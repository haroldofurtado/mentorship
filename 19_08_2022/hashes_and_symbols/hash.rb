# Hash pode ser analogamente comparado a um dicionário
# O que importa é que tenha chave e valor

# notas = {} # também pode ser definido com o seguinte syntaxe suggar = {}
# notas['Inglês'] = 50
# notas['Matemática'] = 70
# notas['Ciências'] = 75

# print 'Informe a matéria desejada:'
# materia = gets.chomp
# puts "Nota da materia #{materia} é #{notas[materia] || 0}"

######################################
menu = <<~MENU
  Informe a matéria desejada:
  1 - Inserir matéria com nota
  2 - Recuperar matéria e sua nota
  3 - Listar todas as matérias
  4 - Excluir matéria
  5 - Exit
MENU

materias = {}

InserirMateria = ->(materia, nota) {
  materias[materia] = nota
  puts "Matéria: #{materia} inserida com sucesso!"
}

RecuperarMateria = lambda {|materia|
  return puts 'Presta atenção ai amigão, essa matéria não foi ainda cadastrada!' if materias.fetch(materia, 'not found') == 'not found'
  nota = materias.fetch(materia)
  puts "A nota da matéria #{materia} é: #{nota}"
}

ListarMaterias = ->{
  materias.each do |chave, valor|
    puts "A nota de #{chave} é: #{valor}"
    puts
  end
}

ExcluirMateria = -> (materia) {
  return puts 'Matéria não encontrada' if materias[materia].nil?
  materias.delete_if {|k, v| k == materia }
  puts "A matéria #{materia} foi excluída"
}

loop do
  puts menu
  opcao = gets.chomp

  case opcao
  when '1'
    puts 'Digite a matéria desejada: '
    materia = gets.chomp
    puts "Digite a nota da #{materia}: "
    nota = gets.chomp
    InserirMateria.call(materia, nota)
  when '2'
    puts 'Digite a matéria a ser recuperada: '
    materia = gets.chomp
    RecuperarMateria.call(materia)
  when '3'
    ListarMaterias.call
  when '4'
    puts 'Digite a matéria a ser excluída: '
    materia = gets.chomp
    ExcluirMateria.call(materia)
  when '5'
    break (puts 'Até logo!')
  else
    puts 'Preste atenção no que digita...'
  end
end
