ENV['RACK_ENV'] = "test"

require "simplecov"
SimpleCov.start

require 'paywatch'

def clear_test_data
  FileUtils.rm_rf "#{Paywatch.home}/#{Paywatch.env}"
end

require 'rack/test'

RSpec.configure do |config|
  config.after(:suite) { clear_test_data }
  config.include Rack::Test::Methods
end

