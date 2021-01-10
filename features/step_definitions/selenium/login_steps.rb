Dado('que seja acessada a área de login') do
    @login = Login.new()
    @login.login_screen()
end

Dado('sejam preenchidos os campos usuário {string} e senha {string}') do |user, password|
    @login.do_login(user, password)
end
  
Quando('clicar em Entre') do
    @login.click_login()
end
  
Então('deverá ser realizado o login no sistema') do
    @login.login_success()
    sleep(5)
end