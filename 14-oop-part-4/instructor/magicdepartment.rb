require_relative "professor"
require_relative "subjects"

class MagicDepartment < Professor 

    include Magic
    def initialize(f,l)
        super(f,l)
        p " from Magic"
    end

end
