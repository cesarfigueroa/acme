module Acme
  module Routes
    def self.registered(app)
      app.use Welcome
    end
  end
end
