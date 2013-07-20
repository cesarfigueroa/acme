require 'erb'
require 'yaml'

database = YAML.load(ERB.new(IO.read('config/database.yml')).result)
ActiveRecord::Base.establish_connection(database[Sinatra.env])
