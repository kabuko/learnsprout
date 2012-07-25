module LearnSprout
    class Page
        include LearnSprout::Connection

        attr_accessor :items

        def initialize(url, type, extras = {})
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
            data["data"].each do |item|
                extras.each do |key, value|
                    item[key] = value
                end
                @items << type.new(item)
            end
        end

        def next
            return Page.new(@nextUrl, @type, @extras)
        end
    end
end
