# require 'rubygems'
require './A'

class B < A 
    def methodOfB
        puts "this is methodOfB from class b"
    end
end

# a=A.new
b=B.new
# a.methodOfA
b.methodOfA