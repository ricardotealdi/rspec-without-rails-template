require 'simplecov'
SimpleCov.start do
  add_filter 'spec/'
  add_filter '_loader'
end

require 'rspec'
require File.expand_path 'app/rspec_without_rails'

RSpec.configure do |config|

  config.mock_with :rspec

end