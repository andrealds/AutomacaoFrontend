Dado("que eu esteja na pagina de login do site") do
@loginpage.pede_usuario_e_senha
@loginpage.load
end                                                                           
                                                                              
Quando("eu insiro o username e password") do                              
  @loginpage.preenche_login
end                                                                           
                                                                              
Quando("clico no botão login") do                                             
  @loginpage.botao_login.click
end                                                                           
                                                                              
Então("o login é realizado com sucesso") do                                 
  expect(page.current_url).to eql("http://the-internet.herokuapp.com/secure")
end                                                                           
                                                                              
Então("a mensagem de login realizado com sucesso é exibida") do
	@securepage.wait_for_mensagem
	expect(@securepage.mensagem.text).to eql("You logged into a secure area! ×")
end

Quando("eu clico no botao logout") do
  @securepage.botao_logout.click
end

Então("a mensagem de que o logout foi realizado com sucesso é exibida") do
  @loginpage.wait_for_mensagem
  expect(@loginpage.mensagem.text).to eql("You logged out of the secure area! ×")
  expect(page.current_url).to eql("http://the-internet.herokuapp.com/login")
end                                                                        