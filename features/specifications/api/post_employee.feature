#language: pt
@api
Funcionalidade: Cadastrar empregado
Realizar cadastro de empregados no sistema
    Contexto:
        Dado que os objetos estejam instanciados
    @post_employee
    Esquema do Cenário: Realizar cadastro de empregados
        Dado que seja informada a data de admissão <admissao> do empregado
        E que seja informado o cargo <cargo>
        E que seja informada a comissão <comissao>
        E que seja informado o cpf <cpf>
        E que seja informado o id do departamento <departamentoId>
        E que seja informado o nome <nome>
        E que seja informado o salário <salario>
        E que seja informado o sexo <sexo>
        E que seja informado o tipo de contratação <tipoContratacao>
        Quando realizar o request do cadastro do empregado
        Então deverá ser cadastrado o empregado informado
    Exemplos:
    |      admissao       |           cargo             |    comissao    |         cpf         |  departamentoId  |           nome            |     salario    | sexo  | tipoContratacao |
    |    "18/01/2021"     | "Analista de testes Senior" |   "1.000,00"   |  "486.401.610-03"   |        1         | "Christian Eduardo Bugay" |    "9.000,00"  |  "m"  |      "clt"      |