require 'selenium-webdriver'
require 'rubygems'


chromedriver_path=File.join(File.absolute_path('',File.dirname("chromedriver")), "Drivers", "chromedriver")
Selenium::WebDriver::Chrome.driver_path=chromedriver_path
driver=Selenium::WebDriver.for :chrome


driver.get("https://www.google.com")
searchTB=driver.find_element(:name, 'q')
searchTB.send_keys("photos")
searchTB.send_keys:return
imagesLink=driver.find_element(:link, 'Images')
imagesLink.click

until (driver.find_element(:class, 'ksb')).displayed? do 
driver.execute_script('window.scrollTo(0,document.body.scrollHeight)')
end

puts "Element found"


