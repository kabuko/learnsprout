module LearnSprout
  class Term
    include LearnSprout::Connection

    attr_accessor :term_id,
                  :name,
                  :end_date,
                  :start_date

    #TODO Other fields

    def initialize(attrs={})
        @client = attrs["client"]
        @org_id = attrs["org_id"]
        @term_id = attrs["id"]
        @name = attrs["name"]
        @end_date = Date.parse(attrs["end_date"])
        @start_date = Date.parse(attrs["start_date"])
        #TODO: Other attrs
    end
  end
end 
