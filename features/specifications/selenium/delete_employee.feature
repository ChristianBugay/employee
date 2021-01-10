#language: pt
@selenium
Funcionalidade: Deletar empregado
Deletar cadastro de empregados
Contexto:
    Dado que seja iniciado o chromedriver
    @delete_employee
    Cenário: Deletar cadastro de empregado
        Dado que o usuário esteja logado no sistema
        E encontrar o empregado para ser deletado
        Quando clicar em deletar
        Então o empregado deverá ser deletado