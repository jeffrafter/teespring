require 'json'

module Teespring
  class Response
    attr_reader :response

    def initialize(response)
      @response = response
    end

    def body
      @body ||= JSON.parse(response.body)
    end

    def status
      response.status
    end
  end
end
