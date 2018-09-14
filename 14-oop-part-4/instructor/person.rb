class Person

    def  initialize(firstname,lastname)
      @firstname = firstname
      @lastname = lastname
    end

    def fullname
        p  "#{@firstname} #{@lastname}"
    end

end