require_relative 'person'

class Student < Person

    Level = 0
    def initialize(f,l)
        super(f,l)
        @knowledge_level = Level
    end

    def fullname
        p 'hi'
    end

    def learn
        @knowledge_level += 10
    end

    def slack
        @knowledge_level -= 5 if @knowledge_level > 0
    end

    def bonus
        add()
    end

    private

    def add 
        @knowledge_level += 30
    end

end