class DeleteEmployee
    def find_employee(value)
        $common_methods.send_keys_xpath("//*[@type='search']/./..", value)
    end
    def delete_employee()
        $common_methods.click_xpath("//*[@class='fa fa-trash']")
    end
    def delete_sucess()
        $common_methods.find_element_xpath("//*[@class='alert alert-success alert-dismissible fade show']")
    end
    def get_text_success()
        $common_methods.get_text_xpath("//div[@class='alert alert-success alert-dismissible fade show']")
    end
end