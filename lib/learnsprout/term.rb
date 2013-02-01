module LearnSprout
  class Term

    attr_accessor :id, :term_id,
                  :name,
                  :end_date,
                  :start_date,
                  :school_id,
                  :time_updated,
                  :updated_at,
                  :section_ids

    def initialize(attrs={})
      @client = attrs["client"]
      @org_id = attrs["org_id"]
      self.id = @term_id = attrs["id"]
      @name = attrs["name"]
      @end_date = attrs["end_date"] && Date.parse(attrs["end_date"]) if attrs["end_date"]
      @start_date = attrs["start_date"] && Date.parse(attrs["start_date"]) if attrs["start_date"]
      @school_id = attrs["school_id"]
      @time_updated = attrs["time_updated"]
      @updated_at = Time.at(@time_updated) if @time_updated
      @section_ids = []
      if attrs["sections"]
        @section_ids = attrs["sections"].collect { |section| section["id"] }
      end
    end

    def current?
      return true if @start_date && !@end_date && Time.now >= @start_date
      return true if @end_date && !@start_date && Time.now <= @end_date
      return true if !@end_date && !@start_date
      return true if Time.now >= @start_date && Time.now <= @end_date
      false
    end

    def sections
      return @sections if @sections
      return [] if @section_ids.empty?
      @sections = []
      @client.sections(@org_id, school_id: @school_id).each do |section|
        @sections.push section if @section_ids.include?(section.id)
      end
      return @sections
    end
  end
end
