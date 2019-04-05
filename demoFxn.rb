class Address

    # def initialize()
    # end

    def sayHi(name)
    puts "Hello "+name+", how are you?"
    end

    addr=Address.new
addr.sayHi("vijay")
addr.sayHi("cyrus")

end


class Person
    attr_accessor :firstName, :lastName, :email

    def initialize 
        @firstname=@lastName=@email=""
    end
end
