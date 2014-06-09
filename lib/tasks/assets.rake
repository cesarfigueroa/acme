namespace :assets do
  task :stylesheets do
    flags = '--watch --style=compressed'
    files = {
      :input => 'app/assets/stylesheets/application.scss',
      :output => 'public/stylesheets/application.css'
    }

    system "sass #{flags} #{files[:input]}:#{files[:output]}"
  end

  task :javascripts do
    flags = '--watch --compile --join'
    dirs = {
      :input => 'app/assets/javascripts',
      :output => 'public/javascripts'
    }

    system "coffee #{flags} #{dirs[:output]}/application.js #{dirs[:input]}"
  end

  desc 'Compile all assets'
  multitask :compile => [:javascripts, :stylesheets]
end
