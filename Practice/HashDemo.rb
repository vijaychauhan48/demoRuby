require 'rubygems'

class HashDemo


	def demoHash()

		hh=Hash.new
		hh={name: "vijay", lastName: "cyrus"}
		puts hh
	end

	def dataProvider()
		arr=Array.new
		arr=["vijay", "cyrus", "asansh", "anshil"]
		puts arr

	end

	def putArrayDataIntoHash()
		arr=Array.new
		arr=["vijay", "cyrus", "asansh", "anshil"]

		hsh=Hash.new
		hsh={}

		hsh.push(arr)
		puts hsh

	end 

	obj = HashDemo.new
	obj.demoHash()
	obj.dataProvider()
	obj.putArrayDataIntoHash()
end
