
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'report_builder'
require 'site_prism'
require 'allure-cucumber'
require 'rspec'

Capybara.configure do |config|
    config.app_host = 'http://automationpractice.com/index.php'
    config.default_driver = :selenium_chrome 
    config.default_max_wait_time = 1
end

AllureCucumber.configure do |config|
    config.results_directory = '/logs'
    config.clean_results_directory = true
end