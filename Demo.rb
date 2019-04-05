
require 'rubygems'
require 'selenium-webdriver'
require 'logingpage'
class Demo
def login()
chromedriver_path=File.join(File.absolute_path('',File.dirname("chromedriver")), "Drivers", "chromedriver")
puts chromedriver_path
Selenium::WebDriver::Chrome.driver_path=chromedriver_path
driver=Selenium::WebDriver.for :chrome
driver.get "https://opensource-demo.orangehrmlive.com/index.php/auth/login"
puts "demo website is open now"

driver.quit
end
end

d=Demo.new
d.login()