#language: pt
#utf-8

Funcionalidade: Fazer login no site
Eu como usuário
Quero informar o username e password
Para realizar o login com sucesso

Contexto: Acesso a pagina de login do site
Dado que eu esteja na pagina de login do site

@login @regressao
Cenário: Realizar login com sucesso
Quando eu insiro o username e password
E clico no botão login 
Então o login é realizado com sucesso
Então a mensagem de login realizado com sucesso é exibida
Quando eu clico no botao logout
Então a mensagem de que o logout foi realizado com sucesso é exibida