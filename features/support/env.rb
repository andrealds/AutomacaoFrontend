require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'
require 'io/console'
require_relative 'helpers.rb'
World(Helpers)


ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']
BROWSER = ENV['BROWSER']
puts ENVIRONMENT_TYPE
Capybara.register_driver :selenium do |app|
 
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app,:browser => :chrome,
            :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
                'chromeOptions' => {
                    'args' => [ "--start-maximized" ]}
            )
        )
    elsif BROWSER.eql?('firefox')

        
        caps = Selenium::WebDriver::Remote::Capabilities.firefox
            caps['acceptInsecureCerts'] = true
        Capybara::Selenium::Driver.new(app, :browser => :firefox, marionette: true,
        desired_capabilities: caps)
      
    end
end


Capybara.configure do |config|
    config.default_driver = :selenium
end

Capybara.default_max_wait_time = 20