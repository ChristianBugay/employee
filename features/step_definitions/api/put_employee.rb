Quando('realizar o request de alteração cadastro do empregado') do
    steps %Q{
        Dado que existam pessoas cadastradas no sistema
        Quando eu pesquisar por todos os empregados
        Então deverão ser apresentados todos os empregados
    }
    @id = @response[0]['empregadoId']
    @response = $employee.put_employee_by_id(@id)
end
  
Então('deverá ser exibido o empregado alterado') do
    expect(@response.code).to eq 202
    expect(@response['nome']).to eq $employee_model.nome
    expect(@response['sexo']).to eq $employee_model.sexo
    expect(@response['cpf']).to eq $employee_model.cpf
    expect(@response['cargo']).to eq $employee_model.cargo
    expect(@response['admissao']).to eq $employee_model.admissao
    expect(@response['salario']).to eq $employee_model.salario
    expect(@response['comissao']).to eq $employee_model.comissao
    expect(@response['tipoContratacao']).to eq $employee_model.tipoContratacao
    log @response
end