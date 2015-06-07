$LOAD_PATH << Dir.pwd

Dir.glob('lib/tasks/*.rake').each { |t| import t }

desc 'Open the console'
task :console do
  system "irb -r config/boot -I #{Dir.pwd}"
end

desc 'Generate secure string (for use in session secret)'
task :secret do
  require 'securerandom'
  puts SecureRandom.hex(64)
end

desc 'Start the server'
task :server do
  system 'bundle exec puma --config config/puma.rb'
end

task :c => :console
task :s => :server

task :default => :server
