module Acme
  class Base < Sinatra::Base
    set :root, Dir.pwd
    set :views, 'app/views'
    set :erb, :escape_html => true

    enable :logging, :method_override
    disable :dump_errors

    configure :test do
      disable :show_exceptions
    end

    helpers Helpers
  end
end
