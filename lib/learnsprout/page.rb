module LearnSprout
  class Page
    include LearnSprout::Connection

    attr_accessor :items

    def initialize(url, type, extras = {})
      return false if url.nil? || url == ""
      @items = []
      @type = type
      @extras = extras
      data = get(url)

      @nextUrl = data["next"].to_s
      # Remove base URL if it's included
      prefix = LearnSprout.endpoint.to_s
      if @nextUrl[0, prefix.length] == prefix
        @nextUrl = @nextUrl[prefix.length, @nextUrl.length - prefix.length]
      end

      #TODO handle non-page URL?
      if data['data']
        data['data'].each do |item|
          @items << type.new(item.merge(extras))
        end
      end
    end


    # page = api_client.schools(org_id)
    # while page.any? do
    #   ...
    # end
    def any?
      @items && @items.any?
    end

    def each(&block)
      return unless self.any?
      self.items.map(&block)
      return self.next.each(&block)
    end

    def next
      return Page.new(@nextUrl, @type, @extras)
    end
  end
end
