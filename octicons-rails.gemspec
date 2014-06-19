# -*- encoding: utf-8 -*-
require File.expand_path("../lib/octicons-rails/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'octicons-rails'
  s.version     = Octicons::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.files       = Dir['{app,lib}/**/*'] + ['LICENSE', 'README.md']
  s.authors     = ['Maksim Berjoza']
  s.email       = ['maksim.berjoza@gmail.com']
  s.homepage    = 'https://github.com/torbjon/octicons-rails'
  s.summary     = 'Awesome Github\'s Octicons with Rails asset pipeline'
  s.description = ''
  s.license     = 'MIT'
  s.add_dependency 'railties', '>= 3.2', '< 5.0'
end