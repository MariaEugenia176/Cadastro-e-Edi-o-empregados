#language: pt
@cadastro
Funcionalidade: Cadastro de empregados
Eu como empregado
Desejo me cadastrar no site OrangeHRM

Cenario: Cadastrar empregado
Dado que eu esteja logado no site OrangeHRM
Quando acessar a tela de cadastro do site
E efetuar o cadastro com dados validos
Entao o cadastro e efetuado e direcionado para a tela de detalhes do empregado