namespace :assets do
  task :stylesheets do
    dirs = {:input => 'app/assets/stylesheets', :output => 'public/stylesheets'}
    system "sass --watch #{dirs[:input]}:#{dirs[:output]}"
  end

  task :javascripts do
    dirs = {:input => 'app/assets/javascripts', :output => 'public/javascripts'}
    system "coffee -o #{dirs[:output]} -cw #{dirs[:input]}"
  end

  desc 'Compile stylesheets'
  task :css => :stylesheets

  desc 'Compile javascripts'
  task :js => :javascripts
end
