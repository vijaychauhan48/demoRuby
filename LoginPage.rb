 require 'rubygems'
 require 'selenium-webdriver'
 require './BasePage'
 require 'pry'
class LoginPage < BasePage

    # chromedriver_path=File.join(File.absolute_path('',File.dirname("chromedriver")), "Drivers", "chromedriver")
    # puts chromedriver_path
    # Selenium::WebDriver::Chrome.driver_path=chromedriver_path
    # $driver=Selenium::WebDriver.for :chrome

 #This method will let user login
 def getTitle()
    
    ttl=$driver.title()
    puts ttl
    return ttl
 end

 def getUrl
    currentUrl=$driver.current_url
    return currentUrl
 end

def clickOnAssignLeave
    $driver.find_element(:xpath, "//span[contains(text(), 'Assign Leave')]").click
    puts "Clicked on Assign Leave"
end


#This will enter the text into corresponding text box.

def enterEmpName(empName)
    employee=$driver.find_element(:xpath, "//input[@id='assignleave_txtEmployee_empName']")
    employee.send_keys(empName)
end 

def enterComments(comments )
    $driver.find_element(:id, 'assignleave_txtComment').send_keys(comments)
end

def selectLeaveType(leaveType)
    $driver.find_element(:id, 'assignleave_txtLeaveType').send_keys(leaveType)
end

def leaveFromDt(leaveFrom)
    lf=$driver.find_element(:id, 'assignleave_txtFromDate')
    lf.clear
    lf.send_keys(leaveFrom)
end

def leaveToDt(leaveTo)
    lt=$driver.find_element(:id, 'assignleave_txtToDate')
    lt.clear
    lt.send_keys(leaveTo)
end

def clickOnAssignBtn()
    $driver.find_element(:id, 'assignBtn')
    puts "Assign button clicked"
end

def verifyConfirmationPopUpAndHeader()
    leavePopup=$driver.find_element(:xpath, "//h3[contains(text(), 'OrangeHRM - Confirm Leave Assignmen')]")
    msg=leavePopup.text()
    return msg
end

def clickLeaveList()
    leaveList=$driver.find_element(:xpath, "//span[contains(text(), 'Leave List')]")
    leaveList.click
    sleep 1

    #locate the drop donw field
    subUnitDd=$driver.find_element(:xpath, "//select[@id='leaveList_cmbSubunit']")

    #create object of that drop down list 
    option=Selenium::WebDriver::Support::Select.new(subUnitDd)
    #select the values using various methods like select_by(:text or :value or :index) etc..
    option.select_by(:index, 1)

    sleep 2
    #below is another way to select a particular element
    #get all the options from the dropdown
    options=subUnitDd.find_elements(tag_name: 'option')

    #Find the dropdown value by text or any other mean
    options.each{|option| option.click if option.text=='Administration'}
    sleep 5
end

def selectTableData()
    
    adminMenu=$driver.find_element(:xpath, "//a[@id='menu_admin_viewAdminModule']")
    adminText=adminMenu.text
    adminMenu.click
    rows=$driver.find_elements(:xpath, "//table[@id='resultTable']//following::tr[1]")
    rowCount=rows.size()
    columns=$driver.find_elements(:xpath, "//table[@id='resultTable']//tr[1]/td")
    colCount=columns.size()
    puts rowCount
    puts colCount
    sleep 2
    # i=2
    # j=2
    #tableData=$driver.find_elements(:xpath, "//table[@id='resultTable']//tr[#{i}]/td[#{j}]")
    # tableData=$driver.find_elements(:xpath, "//table[@id='resultTable']//tr[#{i}]/td[#{j}]").each do |r|
    # puts r.text
        # end 
    # td=[]
    # tableData.each{|t| td+=[t[:data]]   }
    # for i in 1..rowCount
    #     for j in 1..colCount
    #            rp=tableData.text
    #            puts rp
    #     end
    # end

    # (1..rowCount).each do |i| 
    #     (i..colCount).each do |j|
    # columns.each do |col|
    #   print col.text + " \t"
    # end
    # puts "\n"
    # rows.each_with_index do |row, row_index|
    #    print "\n"
    #    columns.each_with_index do |col, col_index|
    #      print $driver.find_elements(:xpath, "//table[@id='resultTable']//tr[#{row_index+1}]/td[#{col_index+1}]").first.text + "\t"
    #    end
    # end
    

    #//table[@id='resultTable']//tr[1]/th[2]
    for x in 2..colCount-1
        puts $driver.find_element(:xpath, "//table[@id='resultTable']//tr[1]/th[#{x}]").text
    end 
             for i in 2..rowCount-1
                for j in 2..colCount
                print $driver.find_element(:xpath, "//table[@id='resultTable']//tr[#{i}]/td[#{j}]").text+"\t\t"
            end
            puts ""
        end
    end
end