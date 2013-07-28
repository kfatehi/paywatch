ENV['RACK_ENV'] = "test"

require "simplecov"
SimpleCov.start

require 'paywatch'

def clear_db
  File.open(Paywatch.db_file, 'w') {|f| f.print("")}
end

require 'rack/test'

RSpec.configure do |config|
  config.before(:suite) { clear_db }
  config.include Rack::Test::Methods
end

