namespace :assets do
  task :stylesheets do
    dirs = {:input => 'app/assets/stylesheets', :output => 'public/stylesheets'}
    flags = '--watch --style=compressed'

    system "sass #{flags} #{dirs[:input]}:#{dirs[:output]}"
  end

  task :javascripts do
    dirs = {:input => 'app/assets/javascripts', :output => 'public/javascripts'}
    system "coffee -o #{dirs[:output]} -cw #{dirs[:input]}"
  end

  desc 'Compile all assets (compile css and js simultaneously)'
  multitask :compile => [:javascripts, :stylesheets]
end
