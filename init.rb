require "rubygems"
require 'dotenv'

ENV['ENV_APPS'] ||= ARGV[0] || 'production'

Dotenv.load(
  ".env",
)

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('Gemfile', __dir__)
require 'active_record'
require 'active_support'
require 'active_support/time_with_zone'
require 'bundler/setup'
require 'command'
require 'csv'
require 'date'
require 'expect'
require 'rspec'
require 'rspec/expectations'
require 'shoulda/matchers'
require 'serverspec'
require 'sqlite3'
require 'time'
require 'tzinfo'
require 'yaml'

groups = [:default, ENV['ENV_APPS']]
Bundler.require(*groups)

Dir[File.join(File.dirname(__FILE__), 'config/initializers/*.rb')].each {|file| require file }
Dir[File.join(File.dirname(__FILE__), 'models/*.rb')].each {|file| require file }