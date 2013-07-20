module Acme
  class Application < Sinatra::Base
    set :root, Dir.pwd
    set :views, 'app/views'
    set :erb, :escape_html => true

    enable :logging, :method_override
    disable :dump_errors

    configure :test do
      disable :show_exceptions
    end

    helpers Helpers
    register Middleware

    get '/' do
      send_file 'public/index.html'
    end

    error ActiveRecord::RecordNotFound do
      send_file 'public/404.html', :status => 404
    end

    not_found do
      send_file 'public/404.html', :status => 404
    end
  end
end
