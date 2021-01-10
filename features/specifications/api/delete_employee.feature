#language: pt
@api
Funcionalidade: Deletar empregados
Realizar remoção de empregados do sistema
Contexto:
    Dado que os objetos estejam instanciados
    @delete_employee_by_id
    Cenário: Deletar empregado por id
        Dado que seja informado o id do empregado
        Quando deletar este empregado
        Então deverá ser apresentada a mensagem "Deletado"