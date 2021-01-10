#language: pt
@api
Funcionalidade: Alterar empregado
Realizar alteração de cadastro de empregados do sistema
    Contexto:
        Dado que os objetos estejam instanciados
    @put_employee
    Esquema do Cenário: Realizar alteração de cadastro de empregados
        Dado que seja informada a data de admissão <admissao> do empregado
        E que seja informado o cargo <cargo>
        E que seja informada a comissão <comissao>
        E que seja informado o cpf <cpf>
        E que seja informado o id do departamento <departamentoId>
        E que seja informado o nome <nome>
        E que seja informado o salário <salario>
        E que seja informado o sexo <sexo>
        E que seja informado o tipo de contratação <tipoContratacao>
        Quando realizar o request de alteração cadastro do empregado
        Então deverá ser exibido o empregado alterado
    Exemplos:
    |      admissao       |   cargo    |    comissao    |      cpf            |  departamentoId  |   nome      |    salario   |  sexo | tipoContratacao |
    |    "01/01/1990"     | "Alterado" |     "10,00"    |  "486.401.610-03"   |        1         | "Alter Ado" |    "9,00"    |  "i"  |      "pj"       |
