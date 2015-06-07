require 'config/boot'

RSpec.configure do |config|
  config.include Rack::Test::Methods

  def app
    Acme::Application
  end
end
