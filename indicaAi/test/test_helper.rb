ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
require 'rails/test_help'

require 'coveralls'
Coveralls.wear!

module ActiveSupport
  class TestCase
    # Setup fixtures in test/fixtures/*.yml for all tests in alphabetical order
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
