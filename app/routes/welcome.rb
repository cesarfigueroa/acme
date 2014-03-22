module Acme
  module Routes
    class Welcome < Base
      get '/' do
        @message = 'Hello World'
        template :index
      end
    end
  end
end
