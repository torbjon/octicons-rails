require 'open-uri'
require 'octicons-rails/version'
require 'bundler/gem_tasks'

desc 'download and update octicons'
task :update do

  system('curl', '-L', '-O', "https://github.com/github/octicons/releases/download/v#{Octicons::Rails::VERSION}/octicons.zip")
  system('unzip', 'octicons.zip', '-d', 'tmp')

  FileUtils.mv Dir['tmp/*.{eot,svg,ttf,woff}'], 'app/assets/fonts'

  css = File.read('tmp/octicons.css')
  css.gsub!(/url\(([^)]+)\)/, %q{url('<%= font_path(\1) %>')})

  File.open('app/assets/stylesheets/octicons.css.erb', 'w') do |io|
    io.write(css)
  end
end
