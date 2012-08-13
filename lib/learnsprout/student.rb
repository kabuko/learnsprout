module LearnSprout
  class Student

    attr_accessor :id, :student_id,
                  :last_name,
                  :grade,
                  :address,
                  :school_id,
                  :number,
                  :phone,
                  :birthday,
                  :first_name,
                  :time_updated,
                  :updated_at,
                  :middle_name,
                  :gender,
                  :exit_date,
                  :entry_date

    def initialize(attrs={})
      @client = attrs["client"]
      @org_id = attrs["org_id"]
      self.id = @student_id = attrs["id"]
      @last_name = attrs["last_name"]
      @grade = attrs["grade"]
      @address = Address.new(attrs["address"])
      @school_id = attrs["school"]["id"]
      @number = attrs["number"]
      @phone = Phone.new(attrs["phone"])
      @birthday = attrs["birthday"] && Date.parse(attrs["birthday"])
      @first_name = attrs["first_name"]
      @time_updated = attrs["time_updated"]
      @updated_at = Time.at(@time_updated) if @time_updated
      @middle_name = attrs["middle_name"]
      @gender = attrs["gender"]
      @exit_date = attrs["exit_date"] && Date.parse(attrs["exit_date"])
      @entry_date = attrs["entry_date"] && Date.parse(attrs["entry_date"])
    end
  end
end 
