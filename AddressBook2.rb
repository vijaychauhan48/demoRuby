class AddressBook2

    #fundamental methods: initialize, add, remove

    def  initialize
        @persons=[]
    end

    def add(person)
        @persons+=[person]
        @persons=@persons.sort{|a,b| by_name(a,b)]}
    end

    def remove (person)
        @persons.delete(person)
    end

    #iterators: each, each_address

    def each
        @persons.each{|p| yeild p}
    end

    def each_address
        @persons.each{|p| yeild.p.address}
    end

    #sorting functions
private #start private methods
    def by_name(a,b)
        if a.firstName==b.firstName
            a.lastName<=>b.lastName
        else
            a.firstName<=>b.firstName
        end
    end
end

end

