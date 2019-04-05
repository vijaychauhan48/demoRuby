require 'rubygems'
require 'selenium-webdriver'
require "./LoginPage"
require 'test-unit'
require 'test/unit/assertions'
include Test::Unit::Assertions
require 'test/unit/ui/console/testrunner'
require './BasePage'


class LoginTestCases < Test::Unit::TestCase
    
    $objLoginPage=LoginPage.new
    $objBasePage=BasePage.new

        #this will test the login
    def test_01login
        $objBasePage.setup()
        $objLoginPage.getUrl()
        actualTitle=$objLoginPage.getTitle()
        expectedTitle="OrangeHRM"
        assert_equal(expectedTitle,actualTitle, "Title of page doesn't match")
        puts "Login test pass"
    end

   #this method will test the dashboard
    def test_02dashboard
        expectedUrl="https://opensource-demo.orangehrmlive.com/index.php/dashboard"
        assert_equal(expectedUrl, $objLoginPage.getUrl, "Incorrect URL")
        puts "Dashboard test pass"  
    end

    #This will test the Assign leave functionality

    def test_03assignLeave
        $objLoginPage.clickOnAssignLeave()
        $objLoginPage.enterEmpName("Linda Anderson")
        $objLoginPage.selectLeaveType("Vacation US")
        $objLoginPage.leaveFromDt("2019-03-15")
        $objLoginPage.leaveToDt("2019-03-16")
        $objLoginPage.enterComments("No comments")
        puts "Everything entered"
        $objLoginPage.clickOnAssignBtn()
        assert_equal("OrangeHRM - Confirm Leave Assignment", $objLoginPage.verifyConfirmationPopUpAndHeader(), "Incorrect header found")
        sleep 5
        $objLoginPage.clickLeaveList()
        sleep 5
    end
end
