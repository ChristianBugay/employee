Dado('encontrar o empregado para ser alterado') do
    @update_employee = UpdateEmployee.new()
    @updated_employee_data = YAML.load_file('features/templates/updated_employee.yml')
    @update_employee.find_employee(@updated_employee_data['nome'])
end
  
Quando('clicar em editar') do
    @update_employee.edit_employee()
end
  
Quando('informar os novos dados deste empregado') do
    @update_employee.send_keys_by_id("inputNome", @updated_employee_data['nome_alterado'])
    @update_employee.send_keys_by_id_select_all("cpf", @updated_employee_data['cpf'])
    @update_employee.select_value('slctSexo', @updated_employee_data['sexo'])
    @update_employee.send_keys_by_id("inputAdmissao", @updated_employee_data['admissao'])
    @update_employee.send_keys_by_id("inputCargo", @updated_employee_data['cargo'])
    @update_employee.send_keys_by_id("dinheiro", @updated_employee_data['salario'])
    @update_employee.click_by_id(@updated_employee_data['tipoContratacao'])
end
  
Então('será salvo o empregado alterado') do
    @update_employee.update_employee()
end

Então('será exibido na barra de pesquisa') do
    @update_employee.find_employee(@updated_employee_data['nome_alterado'])
    success = @update_employee.get_text_success()
    expect(success).to include ("SUCESSO! Informações atualizadas com sucesso")
    sleep(5)
end