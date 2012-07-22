module LearnSprout
  class Section
    include LearnSprout::Connection

    attr_accessor :section_id,
                  :number,
                  :room

    def initialize(attrs={})
        @client = attrs["client"]
        @org_id = attrs["org_id"]
        @section_id = attrs["id"]
        @number = attrs["number"]
        @room = attrs["room"]
        #TODO: Other attrs
    end
  end
end 
