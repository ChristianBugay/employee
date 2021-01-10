class Login
    def do_login(user, password)
        $common_methods.send_keys_name("username", user)
        $common_methods.send_keys_name("pass", password)
    end
    def login_screen()
        $common_methods.find_element_xpath("//*[@class='login100-form-title p-b-1']")
    end
    def click_login()
        $common_methods.click_xpath("//*[@class='login100-form-btn']/./..")
    end
    def login_success()
        $common_methods.click_xpath("//*[@type='search']/./..")
    end
end