class RegisterEmployee
    def click_new_employee()
        $common_methods.click_xpath("//*[@class='navbar-nav ml-auto']")
    end
    def employee_data()
        employee_data = YAML.load_file('features/templates/employee.yml')
        employee_data
    end
    def select_value(name_menu, value)
        $common_methods.select_box(name_menu, value)
    end
    def send_keys_by_id(id, value)
        $common_methods.send_keys_id(id, value)
    end
    def click_by_id(id)
        $common_methods.click_id(id)
    end
    def register_employee()
        $common_methods.click_xpath("//*[@class='cadastrar-form-btn']")
    end
    def find_employee(value)
        $common_methods.send_keys_xpath("//*[@type='search']/./..", value)
    end
    def get_text_success()
        $common_methods.get_text_xpath("//div[@class='alert alert-success alert-dismissible fade show']")
    end
end