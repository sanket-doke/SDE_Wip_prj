require 'watir'
require 'rubygems'
# require 'watir-webdriver'
require 'Selenium-Webdriver'
require 'rspec'

#require 'page-object'


##Browser details##
chromedriver_path = 'C:\Users\Sanket\RubymineProjects\chromedriver_win32\chromedriver.exe'
Selenium::WebDriver::Chrome::Service.driver_path = chromedriver_path

#Before do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  $b = @browser
#end
