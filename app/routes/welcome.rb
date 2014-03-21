module Acme
  module Routes
    class Welcome < Base
      get '/' do
        @message = 'Hello World'
        erb :'welcome/index'
      end
    end
  end
end
