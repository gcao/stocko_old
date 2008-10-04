require 'rubygems'
require 'test/spec'
require 'mocha'
require 'tempfile'
require 'fileutils'
require 'dm-core'

ENV['ENV'] = 'test'
require File.dirname(__FILE__) + '/../config/environment'
