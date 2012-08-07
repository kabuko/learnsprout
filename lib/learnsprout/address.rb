module LearnSprout
  class Address

    attr_accessor :city,
                  :state,
                  :street,
                  :zip

    def initialize(attrs={})
      @city = attrs["city"]
      @state = attrs["state"]
      @street = attrs["street"]
      @zip = attrs["zip"]
    end
  end
end 
