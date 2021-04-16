require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
    config.app_host = "https://www.americanas.com.br/" 
end

