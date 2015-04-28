namespace :db do
  desc 'Migrate the database'
  task :migrate do
    system "sequel -m db/migrations #{ENV['DATABASE_URL']}"
  end
end
