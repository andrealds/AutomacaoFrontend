class LoginPage < SitePrism::Page
    set_url "http://the-internet.herokuapp.com/login"

    element :campo_username, '[id="username"]'
    element :campo_password, '[id="password"]'
    element :botao_login, '[type="submit"]'
    element :mensagem, '[id="flash"]'

    def pede_usuario_e_senha 
      print 'Username:'
      @username = STDIN.gets.chomp
      p 'Por segurança enquanto voce digita a senha nenhum caractere sera mostrado no console.'
      print 'Password:'   
      @password = STDIN.noecho(&:gets).chomp    
    end

    def preenche_login
    	wait_for_campo_username
    	campo_username.set(@username)
    	campo_password.set(@password)
    end
    def preenche_dados_do_login(u,p)
        wait_for_campo_username
        campo_username.set u
        campo_password.set p
    end
end