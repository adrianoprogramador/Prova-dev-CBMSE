# Prova  de desenvolvedor Junior CBMSE

Para concorrer a vaga o candidato terá que desenvolver uma aplicação web seguindo as recomendações abaixo.
## Sinta-se a vontade para utilizar a tecnologia que desejar. 

## Instruções da prova
 - O candidato deve fazer um **fork** desse repositório e criar sua estrutura de pastas contendo o projeto e o **schema** do banco de dados.
 - Após o projeto pronto o candidato deve fazer o *commit e push* para o seu repositório **não sendo necessário** solicitar um **pull-request**
 - O limite de entrega da prova é até as 9:30 do dia 19/10/2020.
 - Ao concluir o desafio, enviar um e-mail para francisco.azevedo@cbm.se.gov.br contendo o curriculo.
 - Prototipo como exemplo das telas: https://ninjamock.com/s/33517Gx (Não obrigatório).
 - Utilizar o SQL sugerido no projeto (Não obrigatório).

## Descrição do desafio
 O objetivo do projeto é criar uma especie de agenda, onde o usuário poderá cadastrar informações (e-mail e telefone) de outras pessoas seguindo os requisitos básicos abaixo.
 - RF01 - O usuário deve ser capaz de adicionar pessoas com seus contatos, por exemplo, email, telefone, celular.
 - RF02 - O usuário pode ser capaz de cadastrar mais de um tipo de contato (ex: e-mail, telefone, celular) para a mesma pessoa.
 - RF03 - O usuário pode cadastrar mais de um contato para o mesmo tipo.
 - RF04 - O sistema deve validar se o contato ja existe.
 - RF05 - Se o contato ja existir, exibi-lo.
 - RF06 - O usuário deve ser capaz de editar os contatos quando desejar.
 - RF07 - O usuario deve ser capaz de deletar o contato.
 - RF08 - O usuário pode visualizar todos os contatos cadastrados.
 
## Oque será avaliado?
O desafio será avaliado através dos seguintes critérios.
 - Habilidade em estilização de pagina HTML
 - Programação Orientada a Objetos
 - Código bem comentado
 - Código limpo
 - Cumprimento das funcionalidades

## Documentação
 - O código foi entregue com um arquivo de README claro de como se guiar?
 - O código possui comentários pertinentes?
 - Os commits são pequenos e consistentes?
 - As mensagens de commit são claras?

 ## Colocando o projeto para funcionar

 - 1.Instalar o Ruby na versão 2.4.7 e o Rails na versão 5.2.0
    Veja como instalar nos links abaixo:
    ruby
    https://www.ruby-lang.org/pt/documentation/installation/
    rails
    http://guides.railsgirls.com/guides-ptbr/install


 - 2.Instalar as dependências do jquery e bootstrap, para isso é necessário ter o Yarn instalado no seu sistema operacional 
  Veja como instalar no link:
  https://classic.yarnpkg.com/pt-BR/docs/install#debian-stable 
 
 - 3.Depois de ter instalando todos os itens vamos começar pelas dependências, com o projeto baixado em seu computador ou servidor entre na pasta cmbse e digite 'yarn install' no seu terminal de comandos, com isso todos os arquivos de javascript e CSS serão instalados na pasta node_modules.

 - 4.Configurando o banco de dados: acesse o arquivo database.yml no seguinte caminho do seu prjeto: cmbse/config/database.yml ajuste os campos username e password em seu arquivo na chave default como no modelo a seguir:
  default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: coloque aqui seu usuário
  password: coloque aqui sua senha
  socket: /var/run/mysqld/mysqld.sock

 - Observação importante: o projeto está configurado para rodar com banco de dados MYSQL, portanto para utilizar outro banco de dados entre em contato que estarei a disposição para ajudá-lo.

 - 5.Depois de ter realizado todas as etapas basta entrar na pasta cmbse pelo seu terminal de comandos e digitar 'rails db:create', esse comando criara o banco no seu mysql, depois de feito a criação é hora de criar as tabelas que ja estão modeladas, faremos isso com o comando 'rails db:migrate', após alguns segundos a mansagem de retorno será apresentada, caso tudo ocorra perfeitamente basta digitar 'rails server' e sua aplicação estará no ar para utilização das funcionalidades. Geralmente o servidor emula a url de acesso na porta localhost:3000.

# Duvidas: adrianocarvalhowebmail@gmail.com
