require 'rubygems'
require 'dm-core'
require 'spec'

ENV['ENV'] = 'test'
require File.dirname(__FILE__) + '/../config/environment'

Spec::Runner.configure do |config|
  # config.use_transactional_fixtures = true

  # == Mock Framework
  #
  # RSpec uses it's own mocking framework by default. If you prefer to
  # use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  config.mock_with :rr
end
