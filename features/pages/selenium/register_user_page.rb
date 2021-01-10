class Register
    def click_register()
        $common_methods.click_xpath("//*[@class='txt2 bo1']")
    end
    def register_screen()
        $common_methods.find_element_xpath("//*[@class='login100-form-title']")
    end
    def confirm_register()
        $common_methods.click_xpath("//*[@class='login100-form-btn']")
    end
    def fill_register()
        $user = random_user()
        $password = random_password()
        $common_methods.send_keys_name("username", $user)
        $common_methods.send_keys_name("pass", $password)
        $common_methods.send_keys_name("confirmpass", $password)
    end
    def random_user()
        user = Faker::Name.first_name
        random_number = Faker::Number.number(3)
        user = "#{user}"+"#{random_number}"
        user
    end
    def random_password()
        password = Faker::Name.last_name
        random_number = Faker::Number.number(3)
        password = "#{password}"+"#{random_number}"
        password
    end
end