require 'rubygems'
require 'json'

#This will read the data from the Json File

#file=File.join(File.absolute_path('',File.dirname("Macintosh HD/Users/maropost/Desktop/RubyTesting/empData.json")
file=File.read "empData.json"
data=JSON.parse(file)
# puts data
h=Hash.new
h= data
puts h
puts
# puts "First Name: "+data["firstName"]
# puts "Last Name: "+data["lastName"]

# address=data["Address"]|

# puts "Address:" +address


# puts data["Address"]|["city"]
# puts data["state"]
# puts data["Zip"]


