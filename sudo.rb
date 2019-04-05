class Sudo_Placement < GeeksforGeeks  
  
    # constructor of deriver class 
    def initialize  
  
       puts "This is Subclass"
    end
end
  
# creating object of superclass 
GeeksforGeeks.new
  
# creating object of subclass 
sub_obj = Sudo_Placement.new
  
# calling the method of super  
# class using sub class object 
sub_obj.super_method 