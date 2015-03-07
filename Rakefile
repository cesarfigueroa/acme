$LOAD_PATH << Dir.pwd

Dir.glob('lib/tasks/*.rake').each { |t| import t }

desc 'Start the server'
task :server do
  system 'bundle exec rackup'
end

task :s => :server

desc 'Start the console'
task :console do
  system "irb -r config/boot -I #{Dir.pwd}"
end

task :c => :console

desc 'Generate secure string (for use in session secret)'
task :secret do
  require 'securerandom'
  puts SecureRandom.hex(64)
end

task :default => :server
