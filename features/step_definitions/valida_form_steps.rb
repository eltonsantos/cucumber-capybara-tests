Dado(/^que eu estou na página do formulário$/) do
  visit new_usuario_path
end

Quando(/^eu preencher todos os campos$/) do
  fill_in "usuario_nome", with: "Elton Santos"
  fill_in "usuario_endereco", with: "Rua Queiroz Ribeiro 840"
  fill_in "usuario_telefone", with: "85986817703"
end

E(/^clicar em "(.*?)"$/) do |commit|
  find_button(commit).click
  save_and_open_page
end

Então(/^deve receber a mensagem "(.*?)"$/) do |mensagem|
  page.has_content?(mensagem)
end
