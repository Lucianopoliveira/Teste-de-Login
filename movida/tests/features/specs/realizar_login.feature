#language: pt


@realizar_login
Funcionalidade: Realizar login.


Cenario: Logar no sistema
Dado que estou na homepage da movida 
E informo CPF e SENHA validos
E clico no botão Login
Então realizo o login com sucesso

Cenario: Login invalido
Dado que o usuário esta na homepage da movida
Quando informa CPF e SENHA invalidos
E clica no botão Login
Então exibe a mensagem de validação

Cenario: Acessar homepage
Dado que o usuário acessa a homepage da movida
Então a homepage é exibida com sucesso