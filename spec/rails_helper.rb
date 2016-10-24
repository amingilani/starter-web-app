# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'spec_helper'
require 'rspec/rails'

# Add the files in support
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# Checks for pending migration and applies them before tests are run.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # You're using database_cleaner instead
  config.use_transactional_fixtures = false

  # well, duhhh
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
end
