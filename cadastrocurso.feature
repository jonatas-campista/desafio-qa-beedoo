Feature: cadastro de cursos

  Scenario: Cadastro de um novo curso com sucesso
    Given que eu estou na página de cadastrar cursos
    When eu preencho o formulário com:
      | Nome do curso         | Curso de Teste     |
      | Descrição do curso    | Descrição de teste |
      | Instrutor             | João Silva         |
      | URL da imagem de capa | http://exemplo.com/imagem.jpg |
      | Data de início        | 2024-08-01         |
      | Data de fim           | 2024-12-31         |
      | Número de vagas       | 30                 |
      | Tipo de curso         | presencial         |
      | Endereço            | Rua Exemplo, 123, Bairro, Cidade            |
    And eu clico no botão "Cadastrar"
    Then eu devo ver uma mensagem de confirmação "Curso cadastrado com sucesso!"
    And o curso "Curso de Teste" deve aparecer na lista de cursos



Scenario: Cadastro de um curso com dados inválidos
    Given que eu estou na página de cadastro de cursos
    When eu preencho o formulário
      | Nome do curso         | ####     |
      | Descrição do curso    | --- |
      | Instrutor             | $$$$         |
      | URL da imagem de capa | !!!! |
      | Data de início        | 2025-01-01         |
      | Data de fim           | 2024-12-31         |
      | Número de vagas       | -5                 |
      | Tipo de curso         | remoto             |
      | Endereço            | <script>alert('olamundo')<script>            |
    And eu clico no botão Cadastrar
    Then eu devo ver uma mensagem de erro


  Scenario: Cadastro de um curso sem dados
  Given que eu estou na página de cadastro de cursos passando o formulario sem dados
  When eu clico no botão Cadastrar curso
  Then eu devo ver uma mensagem de erro e nao cadastrar o curso

  Scenario: Verificar acesso à URL
  Given que eu acesso a URL 'https://creative-sherbet-a51eac.netlify.app/new-course'
  Then eu devo conseguir acessar a página


  


    
