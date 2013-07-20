namespace :assets do
  task :sass do
    input_dir = 'app/assets/stylesheets'
    output_dir = 'public/stylesheets'
    system "sass --update -f -t=compressed #{input_dir}:#{output_dir}"
  end

  task :coffee do
    input_dir = 'app/assets/javascripts'
    output_file = 'public/javascripts/application.js'
    system "coffee -c -j #{output_file} #{input_dir}"
  end

  task :compile => [:sass, :coffee]
end
