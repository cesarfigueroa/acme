module Acme
  module Middleware
    def self.registered(app)
      app.use Rack::Session::Cookie,
        :expire_after => (60 * 60 * 24 * 365),
        :key => 'acme.session',
        :path => '/',
        :secret => ENV['SESSION_SECRET']

      app.use Rack::Protection::FrameOptions, :frame_options => :deny
      app.use Rack::Deflater
      app.use Rack::Cache
    end
  end
end
