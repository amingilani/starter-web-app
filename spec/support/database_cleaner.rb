# frozen_string_literal: true
RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each, unless: { order: :defined }) do
    DatabaseCleaner.start
  end

  config.after(:each, unless: { order: :defined }) do
    DatabaseCleaner.clean
  end
end
