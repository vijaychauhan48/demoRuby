#Vijay's address
vijay_addr={
    "city"=>"solan",
    "province"=>"Himachal Pradesh",
    "zip"=>"173101",
    "country"=>"India"
}


#Rohit's address
rohit_addr={
    "city"=>"Bathinda",
    "province"=>"Punjab",
    "zip"=>"173201",
    "country"=>"India"
}

#Harsh's address
harsh_addr={
    "city"=>"Jalandhar",
    "province"=>"Punjab",
    "zip"=>"173301",
    "country"=>"India"
}

vijay={
    "firstName"=>"Harsh",
    "lastName"=>"Cyrus",
    "phone"=>"902333404",
    "address"=>vijay_addr
}

#rohit
rohit={
    "firstName"=>"Harsh",
    "lastName"=>"Arora",
    "phone"=>"902345488",
    "address"=>rohit_addr
}

#harsh
harsh={
    "firstName"=>"Harsh",
    "lastName"=>"Sharma",
    "phone"=>"9023457878",
    "address"=>harsh_addr
}

def printAddress(address)
    city=address["city"]
    state=address["province"]
    zip=address["zip"]
    country=address["country"]
    
    puts "   " +city
    puts "   " +state
    puts "   " +zip
    puts "   " +country
end 


addressBook=[vijay, rohit, harsh]
puts "Address of Vijay is below: "
 printAddress(vijay_addr)

# addressBook.each do |person|
#     #Name an phone
#     firstName=person["firstName"]
#     lastName=person["lastName"]
#     phoneNum=person["phone"]
#     puts firstName+"  "+lastName
#     puts "     "+phoneNum

#     #Address:
#     city=person["address"]["city"]
#     state=person["address"]["province"]
#     zip=person["address"]["zip"]
#     country=person["address"]["country"]

#     puts "     "+city
#     puts "     "+state
#     puts "     "+zip
#     puts "     "+country

#     puts" "
# end

#Using sorting on this complex structure:
# friends=addressBook.sort_by!{|person| [person["firstName"],person["lastName"]]}
# friends.each do |person|
# # addressBook.each do {|person_a, person_b| person }
#     #person_a["firstName"]<=>person_b["firstName"]
#     #Name an phone
#     lastName=person["lastName"]
#     firstName=person["firstName"]
#     phoneNum=person["phone"]
#     puts firstName+"  "+lastName
#     puts "     "+phoneNum

#     #Address:
#     city=person["address"]["city"]
#     state=person["address"]["province"]
#     zip=person["address"]["zip"]
#     country=person["address"]["country"]

#     puts "     "+city
#     puts "     "+state
#     puts "     "+zip
#     puts "     "+country
#     puts" "
# end

class addressBook

    def initialize
        # Empty array.  
        @persons = []
    end

    def add(person)
        @persons+=[person]
        @persons=@persons.sort{|a, b|by_name(a,b)}
    end

    def by_name(a, b)
        if a.firstName==b.firstName
           a.lastName<=>b.lastName
        else
            a.firstName<=>b.firstName
        end
    end
end
