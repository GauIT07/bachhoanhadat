require "selenium-webdriver"

options = Selenium::WebDriver::Firefox::Profile.new
options['locationContextEnabled'] = 1
driver = Selenium::WebDriver.for :firefox, options: options
driver.navigate.to "https://itmscoaching.herokuapp.com/autocomplete"
autocomplete = driver.find_element(id: 'autocomplete')
autocomplete.send_keys('123 Cộng Hòa, Phường 12, Tan Binh, Ho Chi Minh City, Vietnam')

#Implicit
driver.manage.timeouts.implicit_wait = 5

#Explicit
wait = Selenium::WebDriver::Wait.new(timeout: 5)
wait.until { driver.find_element(class: 'pac-item').displayed? }

autocomplete_result = driver.find_element(class: 'pac-item')
autocomplete_result.click