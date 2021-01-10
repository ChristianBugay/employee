#language: pt
@selenium
Funcionalidade: Cadastrar empregado
Cadastrar um empregado no sistema
Contexto:
    Dado que seja iniciado o chromedriver
    @register_employee
    Cenário: Cadastrar empregado no sistema
        Dado que o usuário esteja logado no sistema
        E acesse a opção de cadastro de empregado
        Quando preencher as informações necessárias do empregado
        E salvar o empregado
        Então o empregado deverá ser encontrado pela barra de pesquisa