namespace :db do
  desc 'Migrate the database'
  task :migrate do
    require 'config/boot'
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate('db/migrations')
  end

  desc 'Load the seed data (from db/seeds.rb)'
  task :seed do
    require 'config/boot'
    load 'db/seeds.rb'
  end

  desc 'Migrate the database and load the seed data'
  task :setup => [:migrate, :seed]
end
