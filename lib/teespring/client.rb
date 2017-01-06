require 'faraday'
require 'json'

module Teespring
  class Client
    attr_accessor :access_token

    def initialize(options = {})
      @app_id = options.delete(:app_id)
    end

    def connection
      @connection ||= ::Faraday.new(url: endpoint)
    end

    def reset
      @connection = nil
    end

    def authenticate(email, password)
      @response = post '/v1/auth-tokens', email: email, password: password, app_id: @app_id

      @access_token = @response.body['token']
    end

    def me
      @response = get '/me', { access_token: @access_token }
    end

    def campaigns(search = nil, states = nil)
      @response = get '/seller/v1/campaigns', { access_token: @access_token, search: search, states: states, page: 1, per_page: 100 }
    end

    private

    def get(url, params)
      request(:get, url, params)
    end

    def post(url, params)
      request(:post, url, params)
    end

    def request(method, url, params)
      response = connection.send(method, url, params)

      case response.status
      when 200..299
        Teespring::Response.new(response)
      when 301
        raise Teespring::Error.new('Not found', response)
      when 400
        message = JSON.parse(response.body)['error']['message'] rescue response.reason_phrase

        raise Teespring::Error.new(message, response)
      else
        raise Teespring::Error.new('Unknown error', response)
      end
    end

    def endpoint
      "https://api.teespring.com"
    end
  end
end
