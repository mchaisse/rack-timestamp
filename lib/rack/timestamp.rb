require 'rack/timestamp/version'

module Rack
  class Timestamp

    def initialize(app)
      @app = app
    end

    def call(env)
      env['rack.timestamp'] = Time.now.httpdate
      @app.call(env)
    end
  end
end
