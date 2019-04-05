require 'rubygems'
require 'selenium-webdriver'
require './BasePage'
require 'pry'

class UserManagementPage < BasePage

    chromedriver_path=File.join(File.absolute_path('',File.dirname("chromedriver")), "Drivers", "chromedriver")
    puts chromedriver_path
    Selenium::WebDriver::Chrome.driver_path=chromedriver_path
    $driver=Selenium::WebDriver.for :chrome

    # def verify_users()
    #     adminMenu=$driver.find_element(:xpath, "//a[@id='menu_admin_viewAdminModule']")
    #     adminText=adminMenu.text
    #     #binding.pry
    #     adminMenu.click
    #     rows=$driver.find_elements(:xpath, "//table[@id='resultTable']//following::tr[1]")
    #     rowCount=rows.size()
    #     columns=$driver.find_elements(:xpath, "//table[@id='resultTable']//tr[1]/td")
    #     colCount=columns.size()
    #     puts rowCount
    #     puts colCount
    #     sleep 2
    #     for x in 2..colCount
    #         print $driver.find_element(:xpath, "//table[@id='resultTable']//tr[1]/th[#{x}]").text+"\t"
    #     end 
    #     puts ""
    #         for i in 2..rowCount-1
    #             for j in 2..colCount
    #                 print $driver.find_element(:xpath, "//table[@id='resultTable']//tr[#{i}]/td[#{j}]").text+"\t\t"
    #             end
    #             puts ""
    #         end
    # end

    def verify_userValues()
        $driver.manage.add_cookie(:name=>'key', :value=>'value')
        $driver.manage.all_cookies.each{|cookie|
        puts "#{cookie[:name]}=>#{cookie[:value]}"}
        driver.manage.delete_cookei
        
        hash=Hash.new
        adminMenu=$driver.find_element(:xpath, "//a[@id='menu_admin_viewAdminModule']")
        adminMenu.click
        rows=$driver.find_elements(:xpath, "//table[@id='resultTable']//following::tr[1]")
        rowCount=rows.size()
        columns=$driver.find_elements(:xpath, "//table[@id='resultTable']//tr[1]/td")
        colCount=columns.size()
        usersInfo=[]
        arr=[]
            for i in 2..rowCount-1
                for j in 2..colCount
                    #binding.pry       
                    arr<<$driver.find_element(:xpath, "//table[@id='resultTable']//tr[#{i}]/td[#{j}]").text
                end
                usersInfo<<arr
                arr=[]
            end
        #print usersInfo
        $driver.save_screenshot('screen.png')
        usersInfo.each{|x| print x,"\t"}
    end
    
   
end