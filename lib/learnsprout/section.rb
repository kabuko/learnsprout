module LearnSprout
  class Section

    attr_accessor :id, :term_id,
                  :section_id,
                  :number,
                  :room,
                  :time_updated,
                  :teacher_id,
                  :school_id,
                  :course_id,
                  :student_ids

    def initialize(attrs={})
      @client = attrs["client"]
      @org_id = attrs["org_id"]
      self.id = @section_id = attrs["id"]
      @number = attrs["number"]
      @room = attrs["room"]
      @term_id = attrs["term"] && attrs["term"]["id"]
      @teacher_id = attrs["teacher"] && attrs["teacher"]["id"]
      @school_id = attrs["school"] && attrs["school"]["id"]
      @course_id = attrs["course"] && attrs["course"]["id"]
      @time_updated = attrs["time_updated"]
      @updated_at = Time.at(@time_updated) if @time_updated
      @student_ids = []
      if attrs["students"]
        attrs["students"].each do |student|
          if student.is_a?(Hash)
            @student_ids.push student["id"]
          else
            @student_ids.push student
          end
        end
      end
    end

    def term
      @term_id && @client.term(@org_id, @term_id)
    end

    def teacher
      @teacher_id && @client.teacher(@org_id, @teacher_id)
    end

    def school
      @school_id && @client.school(@org_id, @school_id)
    end

    def course
      @course_id && @client.course(@org_id, @course_id)
    end

    def students
      temp_students = []
      if @student_ids.count > 0
        @student_ids.each do |student_id|
          temp_students.push @client.student(@org_id, student_id)
        end
      end
      return temp_students
    end
  end
end 
