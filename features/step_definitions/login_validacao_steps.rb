Dado("que eu tenha acessado a pagina de login do site") do                   
  @loginpage.load
end       

#validar_campos                                                                            
Então("os campos username e password deverão estar visiveis") do
  @loginpage.wait_for_campo_username           
  expect(@loginpage.campo_username).to be_visible
  expect(@loginpage.campo_password).to be_visible
end                                                                          

#validar_login_sem_sucesso
Quando("eu insiro o {string} e {string} incorreto") do |login, senha|                    
  @loginpage.preenche_dados_do_login(login, senha)
end                                                                       
                                                                             
Quando("clico em login") do                                                  
  @loginpage.botao_login.click
end                                                                          
                                                                             
Então("o sistema não permite logar no site") do
  @loginpage.wait_for_mensagem                              
  expect(page.current_url).to eql("http://the-internet.herokuapp.com/login")
  expect(@loginpage.mensagem.text).to eql("Your username is invalid! ×")
end                                                                                                                                                                       