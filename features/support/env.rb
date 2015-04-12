require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'http://www.ohma.com'
end
World(Capybara)
Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome
