Dado('encontrar o empregado para ser deletado') do
    @delete_employee = DeleteEmployee.new()
    @delete_employee.find_employee("Rapaz Updated")
end
  
Quando('clicar em deletar') do
    @delete_employee.delete_employee()
end
  
Então('o empregado deverá ser deletado') do
    @delete_employee.delete_sucess()
    success = @delete_employee.get_text_success()
    expect(success).to include ("SUCESSO! Funcionário removido com sucesso")
    sleep(5)
end