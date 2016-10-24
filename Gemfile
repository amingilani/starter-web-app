source 'https://rubygems.org'

# specify ruby
ruby '2.3.1'
# bundle in bundler
gem 'bundler', '~> 1.13.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Ruby execution!
gem 'therubyracer', platforms: :ruby
# Support HAML
gem 'haml'
gem 'haml-rails'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# devise for user auth
gem 'devise'
# I like social logins
gem 'omniauth'
gem 'omniauth-google'
gem 'omniauth-facebook'
# annotate all the models
gem 'annotate'
# I prefer semantic-ui
gem 'rails-assets-semantic', source: 'https://rails-assets.org'
# I like global configuration
gem 'config'
# authorization
gem 'pundit'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

group :test do
  gem 'database_cleaner'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a console
  gem 'byebug', platform: :mri
  # rspec for testing
  gem 'rspec-rails'
  # Style guide to make developer lives hell
  gem 'rubocop', require: false
  # guard is nice, with all the extras
  gem 'guard-rails', require: false
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false
  # documentation with yard
  gem 'yard', require: false
  gem 'kramdown'
  # blackbox testing by faking user interaction
  gem 'capybara', require: false
  # poltergeist is a capybara driver to interface with phantomjs
  gem 'poltergeist', require: false
  # factories make for better testing models
  gem 'factory_girl_rails'
  # automtically generated fake data
  gem 'faker', require: false
  # load environment variables from .env immediately
  gem 'dotenv-rails', require: 'dotenv/rails-now'
  # code coverage
  gem 'simplecov', require: false
  gem 'coveralls', require: false
end

group :development do
  # favicon generator helper
  gem 'rails_real_favicon'
  # Access an IRB console on exception pages or by using <%= console %> anywhere
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your app running in the background.
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # livereload straight in rack
  gem 'rack-livereload'
  # be a good dev and lint your HAML
  gem 'haml_lint'
end

group :production, :staging do
  # Use Redis adapter to run Action Cable in production
  gem 'redis', '~> 3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i(mingw mswin x64_mingw jruby)
