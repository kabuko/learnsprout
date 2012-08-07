module LearnSprout
  class Nces

    attr_accessor :district_id,
                  :school_id

    def initialize(attrs={})
      @district_id = attrs["district_id"]
      @school_id = attrs["school_id"]
    end
  end
end 
