#language: pt
@selenium
Funcionalidade: Login
Realizar login no sistema
Contexto:
    Dado que seja iniciado o chromedriver
    @login
    Esquema do Cenário: Realizar login no sistema
        Dado que seja acessada a área de login
        E sejam preenchidos os campos usuário <user> e senha <password>
        Quando clicar em Entre
        Então deverá ser realizado o login no sistema
    Exemplos:
    |   user       | password     |
    | "BugayTest1" | "bugaytest1" |