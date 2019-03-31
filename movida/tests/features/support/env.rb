require 'capybara/cucumber'
require 'selenium-webdriver'


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://www.movida.com.br/'
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 20
end