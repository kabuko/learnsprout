module LearnSprout
  class Teacher

    attr_accessor :id, :teacher_id,
                  :first_name,
                  :middle_name,
                  :last_name,
                  :title,
                  :address,
                  :school_id,
                  :number,
                  :phone,
                  :time_updated,
                  :updated_at,
                  :email

    def initialize(attrs={})
      @client = attrs["client"]
      @org_id = attrs["org_id"]
      self.id = @teacher_id = attrs["id"]
      @first_name = attrs["first_name"]
      @middle_name = attrs["middle_name"]
      @last_name = attrs["last_name"]
      @title = attrs["title"]
      @address = attrs["address"] && Address.new(attrs["address"])
      @school_id = attrs["school"] && attrs["school"]["id"]
      @number = attrs["number"]
      @phone = attrs["phone"] && Phone.new(attrs["phone"])
      @time_updated = attrs["time_updated"]
      @updated_at = Time.at(@time_updated) if @time_updated
      @email = attrs["email"]
    end

    def school
      @school_id && @client.school(@org_id, @school_id)
    end
  end
end 
