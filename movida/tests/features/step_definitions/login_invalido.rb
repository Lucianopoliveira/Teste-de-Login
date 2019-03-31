Dado("que o usuário esta na homepage da movida") do
    visit 'https://www.movida.com.br/'
    sleep 1
    find(:css, 'body > main > header > div.content > div > div.row.hidden-sm.hidden-xs > div.col-lg-4.col-md-4.col-sm-4.col-xs-4.flags-header.container-login > div.text-right.div-login > a').click
  end
  
  Dado("informa CPF e SENHA invalidos") do
    find(:css, '#form-login > div.modal-body > div > div > div:nth-child(4) > input').set '30658581853'
    find('input[id=senha]').set '150613'
  end

  Dado("clica no botão Login") do
    click_button 'LOGIN'
    sleep 2
  end

  Então("exibe a mensagem de validação") do
    expect(page).to have_content('Usuário ou senha inválido(s)!')
    sleep 2
  end
  










