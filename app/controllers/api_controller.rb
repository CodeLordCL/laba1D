require "faraday"
require "json"
class ApiController < ApplicationController
    URL = 'https://open.er-api.com/v6/latest/USD'
    
    def api
        @respons = JSON.parse(http.get.body.to_s)
    end

    def http
        Faraday.new(
            url: URL
          ) do |faraday|
            faraday.adapter Faraday.default_adapter
        end
    end
end