require_relative "person"

class Professor < Person

    def initialize(f,l)
        super(f,l)
    end

    def teach(student)
        student.learn
    end

    def teachCohort(students)
        students.each do |s|
            s.learn
        end  
    end

    def bonusMark(student)
        student.bonus
    end

end