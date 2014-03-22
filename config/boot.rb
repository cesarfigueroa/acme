require 'bundler'

Bundler.require(:default, ENV['RACK_ENV'] || 'development')

# Middleware

require 'config/middleware'
require 'config/routes'

# Dependencies

Dir.glob('config/initializers/*.rb').each { |i| require i }
Dir.glob('app/helpers/*.rb').each { |h| require h }
Dir.glob('app/models/*.rb').each { |m| require m }

# Routes

require 'config/base'
Dir.glob('app/routes/*.rb').each { |r| require r }

require 'config/application' # Application
