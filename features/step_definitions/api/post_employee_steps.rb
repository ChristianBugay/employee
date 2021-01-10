Dado('que os objetos estejam instanciados') do
    $employee = Employee.new()
end

Dado('que seja informada a data de admissão {string} do empregado') do |admissao|
    $employee_model.admissao = admissao
end
  
Dado('que seja informado o cargo {string}') do |cargo|
    $employee_model.cargo = cargo
end
  
Dado('que seja informada a comissão {string}') do |comissao|
    $employee_model.comissao = comissao
end
  
Dado('que seja informado o cpf {string}') do |cpf|
    $employee_model.cpf = cpf
end
  
Dado('que seja informado o id do departamento {int}') do |departamentoId|
    $employee_model.departamentoId = departamentoId
end
  
Dado('que seja informado o nome {string}') do |nome|
    $employee_model.nome = nome
end
  
Dado('que seja informado o salário {string}') do |salario|
    $employee_model.salario = salario
end
  
Dado('que seja informado o sexo {string}') do |sexo|
    $employee_model.sexo = sexo
end
  
Dado('que seja informado o tipo de contratação {string}') do |tipoContratacao|
    $employee_model.tipoContratacao = tipoContratacao
end
  
Quando('realizar o request do cadastro do empregado') do
    @response = $employee.post_employee()
end
  
Então('deverá ser cadastrado o empregado informado') do
    expect(@response.code).to eq 202
    expect(@response['nome']).to eq $employee_model.nome
    expect(@response['sexo']).to eq $employee_model.sexo
    expect(@response['cpf']).to eq $employee_model.cpf
    expect(@response['cargo']).to eq $employee_model.cargo
    expect(@response['admissao']).to eq $employee_model.admissao
    expect(@response['salario']).to eq $employee_model.salario
    expect(@response['comissao']).to eq $employee_model.comissao
    expect(@response['tipoContratacao']).to eq $employee_model.tipoContratacao
end