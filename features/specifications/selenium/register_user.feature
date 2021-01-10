#language: pt
@selenium
Funcionalidade: Cadastro de usuário
Realizar cadastro de usuário para acessar o sistema
Contexto:
    Dado que seja iniciado o chromedriver
    @register_user
    Cenário: Realizar cadastro de usuário do sistema
        Dado que seja acessada a área de cadastro
        E sejam preenchidas as informações necessárias para o cadastro
        Quando clicar em cadastrar
        Então deverá ser realizado o login para confirmar o cadastro