workers ENV['SERVER_WORKER_COUNT']

threads_count = ENV['SERVER_MAX_THREADS_COUNT']
threads threads_count, threads_count

preload_app!

port ENV['SERVER_PORT']
environment ENV['RACK_ENV']

on_worker_boot do
  Sequel.connect(ENV['DATABASE_URL'])
end
