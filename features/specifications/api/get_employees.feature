#language: pt
@api
Funcionalidade: Pesquisar empregados
Realizar pesquisa de empregados no sistema
Contexto:
    Dado que os objetos estejam instanciados
    @get_employees
    Cenário: Pesquisar empregados
        Dado que existam pessoas cadastradas no sistema
        Quando eu pesquisar por todos os empregados
        Então deverão ser apresentados todos os empregados
    
    @get_employee_by_id
    Esquema do Cenário: Pesquisar empregado por id
        Dado que seja informado o id <id> do empregado
        Quando pesquisar por este id
        Então deverá ser apresentado o empregado correspondente
    Exemplos:
    |  id  |
    | 7742 |