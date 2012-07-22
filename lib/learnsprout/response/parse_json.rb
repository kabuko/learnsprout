module LearnSprout
  module Response
    class ParseJson < Faraday::Response::Middleware
      def on_complete(env)
        if respond_to? :parse
          env[:body] = parse(env[:body]) unless [204,302,304,307].index env[:status]
        end
      end

      def parse(body)
        case body
        when ''
          nil
        else
          response_hash = ::MultiJson.decode(body)

          #raise LearnSprout::RequestException, response_hash["message"] if response_hash["message"]
        end
      end
    end
  end
end
