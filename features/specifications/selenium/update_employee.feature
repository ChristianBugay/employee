#language: pt
@selenium
Funcionalidade: Altualizar cadastro de empregado
Atualizar cadastro de empregados
Contexto:
    Dado que seja iniciado o chromedriver
    @update_employee
    Cenário: Atualizar cadastro de empregado
        Dado que o usuário esteja logado no sistema
        E encontrar o empregado para ser alterado
        Quando clicar em editar
        E informar os novos dados deste empregado
        Então será salvo o empregado alterado
        E será exibido na barra de pesquisa