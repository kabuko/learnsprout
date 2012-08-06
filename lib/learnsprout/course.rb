module LearnSprout
  class Course

    attr_accessor :id, :course_id,
                  :school_id,
                  :name,
                  :number,
                  :time_updated

    def initialize(attrs={})
        @client = attrs["client"]
        @org_id = attrs["org_id"]
        self.id = @course_id = attrs["id"]
        @name = attrs["name"]
        @number = attrs["number"]
        @time_updated = attrs["time_updated"]
        @school_id = attrs["school"]["id"]
    end

    def school
        @client.school(@org_id, @school_id)
    end
  end
end 
