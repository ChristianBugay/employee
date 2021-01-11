Dado('que seja iniciado o chromedriver') do
    Selenium::WebDriver::Chrome::Service.driver_path = "../employee/chromedriver.exe"
    $driver = Selenium::WebDriver.for :chrome
    $driver.manage.window.maximize
    $driver.get URL
    $common_methods = CommonMethods.new()
end