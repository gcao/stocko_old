ENV['ENV'] ||= 'development'

require File.dirname(__FILE__) + "/environments/#{ENV['ENV']}"