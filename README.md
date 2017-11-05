Automação Front End

Configurando o Ambiente no Windows:

1 - Instale o Ruby no Windows

baixe em: ​http://rubyinstaller.org/downloads/​.
Executar o arquivo baixado e seguir as instruções clicando em ‘next’
Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’.
No Console, digite o comando ​ruby –v​, se estiver tudo correto você vai ver a versão instalada.

2 - Instale o DEVkit
Baixe em: http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx. exe​.
Acesse o diretório C:\Ruby23-x64.
Crie uma pasta chamada ​devKit​ e coloque o arquivo baixado dentro dessa pasta.
Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada.
No Console, digite os comandos:
cd C:\Ruby23-x64\devkit ruby dk.rb init ruby dk.rb install

3 - Instalando o Bundler
No prompt de comando digite:
gem install bundler

4 - Instalando ChromeDriver
Baixe em: ​https://chromedriver.storage.googleapis.com/index.html?path=2.33/
Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin

5 - Instalando Geckodriver
Baixe em: https://github.com/mozilla/geckodriver/releases/download/v0.19.1/geckodriver-v0.19.1-win64.zip
Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin

Rodando a Automação:

1 - Faça o clone do projeto na URL:
git clone https://github.com/andrealds/AutomacaoFrontend.git

2 - Instale as dependencias do projeto com o comando:
bundle install

3 - Para rodar a automação digite o comando:
cucumber -p chrome 

4 - Para rodar a automação utilizando outros browsers. 
 cucumber -p chrome
 cucumber -p firefox

5 - Para rodar a automação com Report Html:
cucumber -p regressao -p chrome

Informações Adicionais. 
1 - Sempre que um cenário é executado a automação tira o screenshot. As evidências ficam armazenadas na pasta reports/screenshot.
2 - Esta automação contem um cenario que exige login e senha por se tratar de dados sensiveis é necessario informa-los logo no inicio da execução o mesmo não fica armazenado nela.