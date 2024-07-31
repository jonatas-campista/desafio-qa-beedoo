Feature: exclusao de cursos

  Scenario: Exclusão de um curso com sucesso
  Given que eu estou na página de lista de cursos
  And o curso "Curso de Teste" está na lista
  When eu excluo o curso "Curso de Teste"
  And deve aparecer uma mensagem de dizendo "curso excluido com sucesso"
  Then eu não devo ver o curso "Curso de Teste" na lista de cursos

  


    
