Dado('que existam pessoas cadastradas no sistema') do
    
end
  
Quando('eu pesquisar por todos os empregados') do
    @response = $employee.get_employees()
    expect(@response[0]['nome']).not_to be_empty
end
  
Então('deverão ser apresentados todos os empregados') do
    expect(@response.body).not_to be_empty
end

Dado('que seja informado o id {int} do empregado') do |id|
    $employee_model.id = id
end
    
Quando('pesquisar por este id') do
    @response = $employee.get_employee_by_id($employee_model.id)
end
    
Então('deverá ser apresentado o empregado correspondente') do
    expect(@response['empregadoId']).to eq $employee_model.id
    log @response
end