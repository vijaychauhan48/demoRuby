require 'rubygems'
require 'selenium-webdriver'

class BasePage

    #This will initialize the driver
    #def startUp 
        chromedriver_path=File.join(File.absolute_path('',File.dirname("chromedriver")), "Drivers", "chromedriver")
        puts chromedriver_path
        Selenium::WebDriver::Chrome.driver_path=chromedriver_path
        $driver=Selenium::WebDriver.for :chrome
    #end

     #this method runs before each test
    def setup 
        # binding.pry
        $driver.get "https://opensource-demo.orangehrmlive.com/index.php/auth/login"
        BasePage.loginToApp("Admin", "admin123")
        puts "Application launch success!!!"
    end 

    def self.loginToApp(username, password)
        BasePage.enterUserName(username)
        BasePage.enterPassword(password)
        BasePage.clickOnLoginButton()
    end

     # This method will click on an element
    def self.clickOnLoginButton()
        elementLoginBtn=$driver.find_element(:id,'btnLogin' )
        elementLoginBtn.click()
    end

    #This method will type in the username          
    def self.enterUserName(username)
        elementUsername=$driver.find_element(:name, 'txtUsername')
        elementUsername.send_keys(username)
    end

    #This method will type in the password
    def self.enterPassword(password)
        elementPassword=$driver.find_element(:name, 'txtPassword')
        elementPassword.send_keys(password)
    end
    
    #this method runs after each test
    def teardown
        # $objLoginPage.closeBrowser()
        $driver.quit
    end

    # def closeBrowser()
    #     $driver.quit
    # end

    #this method loads the application
    def self.loadApp()
        $driver.get "https://opensource-demo.orangehrmlive.com/index.php/auth/login"
    end  

end


