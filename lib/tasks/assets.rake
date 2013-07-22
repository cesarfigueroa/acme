namespace :assets do
  task :stylesheets do
    options = '--update --force --style=compressed'
    system "sass #{options} app/assets/stylesheets:public/stylesheets"
  end

  task :javascripts do
    options = '--compile --output public/javascripts'
    system "coffee #{options} app/assets/javascripts"
  end

  task :compile => [:stylesheets, :javascripts]
end
