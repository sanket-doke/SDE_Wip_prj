require 'watir'
require 'rubygems'
# require 'watir-webdriver'
require 'Selenium-Webdriver'
require 'rspec'



##Browser details##
chromedriver_path = 'C:\Users\Sanket\RubymineProjects\chromedriver_win32\chromedriver.exe'
Selenium::WebDriver::Chrome::Service.driver_path = chromedriver_path


@browser = Watir::Browser.new
@browser.window.maximize
$b = @browser


