require 'rubygems'
require 'selenium-webdriver'
require "./UserManagementPage"
require 'test-unit'
require 'test/unit/assertions'
include Test::Unit::Assertions
require 'test/unit/ui/console/testrunner'
require './LoginPage'
require './BasePage'


class UserManagementTests < Test::Unit::TestCase
        
    $objUserMgmtPage=UserManagementPage.new
    $objLoginPage=LoginPage.new
    $objBasePage=BasePage.new
 

    def setup 
        # binding.pry
        $driver.get "https://opensource-demo.orangehrmlive.com/index.php/auth/login"
        BasePage.loginToApp("Admin", "admin123")
        puts "Application launch success!!!"
    end 

    def test_01UserMgmt
        #binding.pry
        #$objBasePage.setup()
        #$objUserMgmtPage.verify_users()
        $objUserMgmtPage.verify_userValues()
    end
end