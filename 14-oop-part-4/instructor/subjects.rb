module Magic

    def initialize(f,l)
        super(f,l)
        p "from subjects"
    end

    def herbology
       p "weed is good"
    end

    def spell(spell)
        p spell
    end
end

module Science

    def light?(val)
        if val == "wave"
            p "light is particle in nature"
        else
            p "light is wave"
        end
    end
end