module Simpler
  class Controller

    def initialize(env)
      @request = Rack::Request.new(env)
      @response = Rack::Response.new
    end

    def make_response(action)
      ["200",{"Content-Type" => "text/plain", "X-Simpler-Action" => action}, 
      ["Hello World"]
    ]
      # @request.env['simpler.controller'] = self
      # @request.env['simpler.action'] = action

      # send(action)
      # set_default_headers
      # write_response

      # @response.finish
    end

  end
end