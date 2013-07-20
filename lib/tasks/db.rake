namespace :db do
  task :migrate do
    require 'config/boot'
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate('db/migrations')
  end

  task :seed do
    require 'config/boot'
    load 'db/seeds.rb'
  end

  task :setup => [:migrate, :seed]
end
