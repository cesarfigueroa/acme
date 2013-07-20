module Sinatra
  def self.env
    @env ||= ENV['RACK_ENV'] || 'development'
  end
end
