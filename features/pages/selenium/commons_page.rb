class CommonMethods
    def find_element_xpath(xpath)
        $driver.find_element(:xpath, xpath)
    end

    def send_key_select_all(id)
        $driver.find_element(:id, id).send_keys(:control, 'a')
    end

    def click_id(id)
        $driver.find_element(:id, id).click()
    end

    def click_name(name)
        $driver.find_element(:name, name).click()
    end
    
    def click_xpath(xpath)
        $driver.find_element(:xpath, xpath).click()
    end
    
    def send_keys_id(id, field)
        $driver.find_element(:id, id).send_keys(field)
    end

    def send_keys_name(name, field)
        $driver.find_element(:name, name).send_keys(field)
    end
    
    def send_keys_xpath(xpath, field)
        $driver.find_element(:xpath, xpath).send_keys(field)
    end

    def select_box(select_box, value)
        dropDownMenu = $driver.find_element(:id, select_box)
        option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
        option.select_by(:text, value)
    end

    def clear_id(id)
        $driver.find_element(:id, id).clear()
    end

    def get_text_xpath(xpath)
        $common_methods.find_element_xpath(xpath).text
    end

end