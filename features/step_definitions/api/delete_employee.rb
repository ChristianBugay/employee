Dado('que seja informado o id do empregado') do
    steps %Q{
        Dado que existam pessoas cadastradas no sistema
        Quando eu pesquisar por todos os empregados
        Então deverão ser apresentados todos os empregados
    }
    @id = @response[0]['empregadoId']
end

Quando('deletar este empregado') do
    @response = $employee.delete_employee_by_id(@id)
end
  
Então('deverá ser apresentada a mensagem {string}') do |mensagem|
    expect(@response.code).to eq 202
    expect(@response.parsed_response).to eq mensagem
end