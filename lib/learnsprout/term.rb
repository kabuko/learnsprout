module LearnSprout
  class Term

    attr_accessor :term_id,
                  :name,
                  :end_date,
                  :start_date,
                  :school_id,
                  :time_updated

    def initialize(attrs={})
        @client = attrs["client"]
        @org_id = attrs["org_id"]
        @term_id = attrs["id"]
        @name = attrs["name"]
        @end_date = attrs["end_date"] && Date.parse(attrs["end_date"])
        @start_date = attrs["start_date"] && Date.parse(attrs["start_date"])
        @school_id = attrs["school_id"]
        @time_updated = attrs["time_updated"]
        @section_ids = []
        if attrs["sections"]
            attrs["sections"].each do |section|
                @section_ids.push section["id"]
            end
        end
    end

    # Gets the sections for this term. This method is extremely slow as it retrieves a list of IDs
    # for associated terms then performs a separate request for each term for each ID.
    #
    # TODO Optimize somehow, perhaps by lazy loading
    def sections
      temp_sections = []
      if @section_ids.count > 0
         @section_ids.each do |section_id|
           temp_sections.push @client.section(@org_id, section_id)
         end
      end
      return temp_sections
    end
  end
end 
