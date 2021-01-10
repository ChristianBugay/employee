Dado('que o usuário esteja logado no sistema') do
    steps %Q{
        Dado que seja acessada a área de login
        E sejam preenchidos os campos usuário "BugayTest1" e senha "bugaytest1"
        Quando clicar em Entre
        Então deverá ser realizado o login no sistema
    }
    @new_employee = RegisterEmployee.new()
end
  
Dado('acesse a opção de cadastro de empregado') do
    @new_employee.click_new_employee()
end
  
Quando('preencher as informações necessárias do empregado') do
    @employee_data = @new_employee.employee_data()
    @new_employee.send_keys_by_id("inputNome", @employee_data['nome'])
    @new_employee.send_keys_by_id("cpf", @employee_data['cpf'])
    @new_employee.select_value('slctSexo', @employee_data['sexo'])
    @new_employee.send_keys_by_id("inputAdmissao", @employee_data['admissao'])
    @new_employee.send_keys_by_id("inputCargo", @employee_data['cargo'])
    @new_employee.send_keys_by_id("dinheiro", @employee_data['salario'])
    @new_employee.click_by_id(@employee_data['tipoContratacao'])
end
  
Quando('salvar o empregado') do
    @new_employee.register_employee()
    success = @new_employee.get_text_success()
    expect(success).to include ("SUCESSO! Usuário cadastrado com sucesso")
end
  
Então('o empregado deverá ser encontrado pela barra de pesquisa') do
    @new_employee.find_employee(@employee_data['nome'])
    sleep(5)
end