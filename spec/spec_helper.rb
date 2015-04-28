require 'config/boot'

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    Acme::Application
  end
end
