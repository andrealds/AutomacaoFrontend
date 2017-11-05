#language: pt
#utf-8

Funcionalidade: Validação de campos username e password
Eu como usuário
Quero acessar a pagina de login do site
Para verificar que os campos username e password estão visiveis

Contexto: Acesso a pagina de login do site
Dado que eu tenha acessado a pagina de login do site

@validar_campos @regressao
Cenário: Validar que campo username e password estao visiveis
Então os campos username e password deverão estar visiveis

@validar_login_sem_sucesso @regressao
Esquema do Cenário: Validar que ao inserir dados incorretos o sistema não permite logar no site
Quando eu insiro o <login> e <senha> incorreto
E clico em login
Então o sistema não permite logar no site

Exemplos:
      |    login      |  senha   |
      | "andre.luiz"  |  "1234"  |