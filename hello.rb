# puts "What is your name?"
# name=gets

# name=name.chomp
# puts "Hello "+name+". How are you?"
# work=gets.chomp
# puts "Nice to hear that you work on "+work

#Below program will input two words and will print them in the opposite order

# word1=gets.chomp.reverse
# puts "First word is: "+word1
# word2=gets.chomp.reverse
# puts "second word is: "+word2

#Write a program that asks for a number and a sentence and prints the sentence backwards that many times.
# puts "Enter the number"
# num=gets.chomp.to_i
# puts "Enter the sentence to reverese"
# para=gets.chomp
# puts "Number entered is : "+num.to_s
# puts "Sentence Entered is : "+para
# num.times do
# puts "Reverse of Sentense is: "+para.reverse
# end

#Factorial of a number based on user input
# puts "Enter the number: "
# num=gets.chomp.to_i
# fact=1
# num.times do
# fact=fact*num
# num-=1
# end
# puts "Factorial is : "+fact.to_s

#Cacluate the fare, below example is with incorrect if-elsif conditions
# puts "How old are you?"
# age=gets.chomp.to_i
# if age>=2
#     puts "Child fare"
# elsif age>=14
#     puts "Adult fare"
# elsif age>=60 
# else
#     puts "Hurray! no fare"
# end

#While loop
# count=0
# while count<=10
#     puts "Count: "+count.to_s
#     count+=1
# end

#Power of 2

# number=1
# while number<10_000
#     number *=2
# end
# #number /=2
# puts " is the highest poser of 2 less than 10000" + number.to_s

#iterators in the Arrays

# friends=["rohit", "harsh", "sanjay", "neeraj", "himanshu"]
# friends.each do |friend|
#     puts " I have a friend called: "+friend
# end

# puts "Here is another way to write this :"
# 5.times do |i|
#     puts " I have more friend named: "+friends[i]
# end

# #here is anothe cool way to print the array
# friends.length.times do |i|
#     puts "Cool friends: "+friends[i]
# end

#to print the even / odd numbered friends
#friends.length.times do |i|
#     if i%2==1
#         puts "Even friends are: "+friends[i]
#     end
# end 

# friends.sort.reverse.each do |i|
#     puts "Friends in reverse order are: "+i
# end

#Hash in Ruby #key #values Terminologies

vHash={
    "firstName"=>"vijay",
    "lastName"=>"cyrus",
    "address"=>"chandigarh",
    "province"=>"chandigarh"
}

#This prints all the key values
# vHash.each do |key, value|
#     puts key+"=>"+value
# end

#this prints all the keys Hash#each_key
vHash.each_key do |key|
    puts key
end

#this prints all the values Hash#each_value
vHash.each_value do |val|
    puts val
end
