
require 'selenium-webdriver'
require 'webdrivers'

begin
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/form"
    
    first_name = driver.find_element(id: 'first-name')
    first_name.send_keys('Nhan')
    sleep 2
    
    last_name = driver.find_element(id: 'last-name')
    last_name.send_keys('Le')
    sleep 2
        
    job_title = driver.find_element(id: 'job-title')
    job_title.send_keys('CNTT')
    sleep 2   
    
    radio_button_1 = driver.find_element(id: 'radio-button-1')
    radio_button_1.click
    sleep 2
    
    checkbox_1 = driver.find_element(id: 'checkbox-1')
    checkbox_1.click
    sleep 2

    driver.find_element(css: 'option[value="2"]').click

    /
    dropdown_menu_1 = driver.find_element(id: 'select_menu')
    dropdown_menu_1.click

    autocomplete_item = driver.find_element(id: 'autocomplete')
    autocomplete_item.click
    sleep 2
    /
    /
    ddlExperience = driver.find_element(id: 'select-menu')
    option = Selenium::WebDriver::Support::Select.new(ddlExperience)
    option.select_by(:text, '0-1')
    /
    /
    driver.find_element(id: 'select-menu').click
    sleep 1
    driver.find_element(xpath: "option[contains(text(),'0-1')]").click
    /
    
    datefield = driver.find_element(id: 'datepicker')
    datefield.send_keys('09/02/1989')
    datefield.send_keys :return
    sleep 2

    button = driver.find_element(className: 'btn btn-lg btn-primary')
    button.click
    sleep 2
ensure
  driver.quit
end