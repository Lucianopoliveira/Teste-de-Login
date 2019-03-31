Dado("que estou na homepage da movida") do
  visit 'https://www.movida.com.br/'
  sleep 1
  find(:css, 'body > main > header > div.content > div > div.row.hidden-sm.hidden-xs > div.col-lg-4.col-md-4.col-sm-4.col-xs-4.flags-header.container-login > div.text-right.div-login > a').click


end

Dado("informo CPF e SENHA validos") do
  find(:css, '#form-login > div.modal-body > div > div > div:nth-child(4) > input').set '30658581856'
  find('input[id=senha]').set '150619'
end


Dado("clico no botão Login") do
  click_button 'LOGIN'
  sleep 2
end

Então("realizo o login com sucesso") do
  expect(page).to have_content('OLÁ LUCIANO')
  sleep 2
end



  