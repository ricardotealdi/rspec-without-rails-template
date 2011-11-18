require 'simplecov'
SimpleCov.start do
  add_filter 'spec/'
  add_filter '_loader'
end

require 'rspec'
require File.expand_path "app/app_loader.rb"

RSpec.configure do |config|

  config.mock_with :rspec

end