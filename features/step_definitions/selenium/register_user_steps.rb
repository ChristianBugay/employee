Dado('que seja iniciado o chromedriver') do
    Selenium::WebDriver::Chrome::Service.driver_path = "../teste-inmetrics/chromedriver.exe"
    $driver = Selenium::WebDriver.for :chrome
    $driver.manage.window.maximize
    $driver.get URL
    $common_methods = CommonMethods.new()
end

Dado('que seja acessada a área de cadastro') do
    @register = Register.new()
    @register.click_register()
    @register.register_screen()
end

Dado('sejam preenchidas as informações necessárias para o cadastro') do
    @register.fill_register()
end
  
Quando('clicar em cadastrar') do
    @register.confirm_register()
end
  
Então('deverá ser realizado o login para confirmar o cadastro') do
    steps %Q{
        Dado que seja acessada a área de login
        E sejam preenchidos os campos usuário "#{$user}" e senha "#{$password}"
        Quando clicar em Entre
        Então deverá ser realizado o login no sistema
    }
end