# language: pt

Funcionalidade: Preencher o formulário
  
  @javascript
  Cenário: Deve preencher todos os campos do formulário e salvar com sucesso
    Dado que eu estou na página do formulário
    Quando eu preencher todos os campos
    E clicar em "Create Usuario"
    Então deve receber a mensagem "Usuário cadastrado com sucesso"