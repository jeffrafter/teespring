module Teespring
  class Error < StandardError
    attr_reader :response

    def initialize(message, response)
      @response = response

      super(message)
    end
  end
end
