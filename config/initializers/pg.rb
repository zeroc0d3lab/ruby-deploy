require 'yaml'
require 'dotenv'

environment = ENV['JOB_ENV'] || 'production'
config_path = File.join(File.dirname(__FILE__), '../database.yml')
config      = YAML.load(File.read(config_path))

ActiveRecord::Base.establish_connection config["#{environment}"]
