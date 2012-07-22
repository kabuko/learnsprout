module LearnSprout
  class Student
    include LearnSprout::Connection

    attr_accessor :student_id,
                  :name

    def initialize(attrs={})
        @client = attrs["client"]
        @org_id = attrs["org_id"]
        @student_id = attrs["id"]
        @name = attrs["name"]
        #TODO: Other attrs
    end
  end
end 
