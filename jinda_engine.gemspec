# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jinda_engine/version'

Gem::Specification.new do |spec|
  spec.name          = 'jinda_engine'
  spec.version       = Jinda_engine::VERSION
  spec.authors       = ['Prateep Kul']
  spec.email         = ['1.0@kul.asia']

  spec.summary       = %q{Rails workflow engine from mind map: Freemind}
  spec.description   = %q{Generate Rails workflow engine from mind map: Freemind}
  spec.homepage      = 'https://github.com/kul1/jinda_engine'
  spec.license       = 'MIT'
	spec.files         = Dir['Rakefile', '{app,config,db,lib}/**/*', 'README*',  'Rakefile', 'LICENSE*', 'lib/generators/jinda_engine/templates/.env'] & `git ls-files -z`.split("\0")
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.5.0'
  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.2"
  spec.add_dependency 'maruku', '~> 0.7.3'
  spec.add_dependency 'rouge'
  spec.add_dependency 'normalize-rails'
  spec.add_dependency 'font-awesome-rails'
  spec.add_dependency 'font-awesome-sass', '~> 5.12.0'
  spec.add_dependency 'meta-tags'
  spec.add_dependency 'jquery-turbolinks', '2.1.0'
  spec.add_dependency 'mongo', '2.11.3'
  spec.add_dependency 'bson', '4.4.2'
  spec.add_dependency 'turbolinks_render'
  spec.add_dependency 'nokogiri', '1.10.9'
  spec.add_dependency 'haml', '~> 5.1', '>= 5.1.2'
  spec.add_dependency 'haml-rails', '~> 2.0.1'
  spec.add_dependency 'mail'
  spec.add_dependency 'prawn'
  spec.add_dependency 'redcarpet'
  spec.add_dependency 'bcrypt'
  spec.add_dependency 'oauth2', '1.4.4'
  spec.add_dependency 'omniauth', '1.9.1'
  spec.add_dependency 'omniauth-oauth2', '1.6.0'
  spec.add_dependency 'omniauth-identity', '~> 1.1.1'
  spec.add_dependency 'omniauth-facebook', '6.0.0'
  spec.add_dependency 'omniauth-google-oauth2', '0.8.0'
  spec.add_dependency 'dotenv-rails', '2.7.5'
  spec.add_dependency 'cloudinary', '1.13.2'
  spec.add_dependency 'kaminari', '1.2.0'
  spec.add_dependency 'kaminari-mongoid', '1.0.1'
  spec.add_dependency 'jquery-rails', '4.3.5'
  spec.add_development_dependency 'shoulda'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'better_errors'
  spec.add_development_dependency 'binding_of_caller'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'factory_bot_rails'
	spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-minitest'
  spec.add_development_dependency 'capybara'
	spec.add_development_dependency 'selenium-webdriver'
  spec.add_development_dependency 'rb-fsevent'
	spec.add_development_dependency 'valid_attribute'
  spec.add_development_dependency 'faker'
end
