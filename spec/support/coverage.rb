# frozen_string_literal: true
require 'simplecov'
SimpleCov.start 'rails'
if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end
