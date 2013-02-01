module LearnSprout
  class Org

    attr_accessor :id, :org_id,
                  :name

    def initialize(attrs={})
      @client = attrs["client"]
      self.id = @org_id = attrs["id"]
      @name = attrs["name"]
    end

    def school(school_id)
      @client.school(@org_id, school_id)
    end

    def schools
      @client.schools(@org_id)
    end

    def students
      @client.students(@org_id)
    end

    def student(student_id)
      @client.student(@org_id, student_id)
    end

    def sections
      @client.sections(@org_id)
    end

    def section(section_id)
      @client.section(@org_id, section_id)
    end

    def teachers
      @client.teachers(@org_id)
    end

    def teacher(teacher_id)
      @client.teacher(@org_id, teacher_id)
    end

    def terms
      @client.terms(@org_id)
    end

    def term(term_id)
      @client.term(@org_id, term_id)
    end

    def courses
      @client.courses(@org_id)
    end

    def course(course_id)
      @client.course(@org_id, course_id)
    end
  end
end 
