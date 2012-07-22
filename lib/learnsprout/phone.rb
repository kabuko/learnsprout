module LearnSprout
  class Phone

    attr_accessor :fax,
                  :main

    def initialize(attrs={})
        @fax = attrs["fax"]
        @main = attrs["main"]
    end
  end
end 
