workers ENV['SERVER_WORKER_COUNT'] || 2

threads_count = ENV['SERVER_MAX_THREADS_COUNT'] || 5
threads threads_count, threads_count

preload_app!

port ENV['SERVER_PORT'] || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  Sequel.connect(ENV['DATABASE_URL'])
end
