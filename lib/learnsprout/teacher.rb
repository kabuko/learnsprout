module LearnSprout
  class Teacher
    include LearnSprout::Connection

    attr_accessor :teacher_id,
                  :first_name,
                  :middle_name,
                  :last_name,
                  :title,
                  :number,
                  :time_updated,
                  :email

    #TODO Other fields

    def initialize(attrs={})
        @client = attrs["client"]
        @org_id = attrs["org_id"]
        @teacher_id = attrs["id"]
        @first_name = attrs["first_name"]
        @middle_name = attrs["middle_name"]
        @last_name = attrs["last_name"]
        @title = attrs["title"]
        @number = attrs["number"]
        @time_updated = attrs["time_updated"]
        @email = attrs["email"]
        #TODO: Other attrs
    end
  end
end 
