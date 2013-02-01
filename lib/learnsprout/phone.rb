module LearnSprout
  class Phone

    attr_accessor :fax,
                  :main,
                  :home

    def initialize(attrs={})
      @fax = attrs["fax"]
      @main = attrs["main"]
      @home = attrs["home"]
    end
  end
end 
