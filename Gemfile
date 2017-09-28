source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'activerecord', require: 'active_record'
gem 'command'
gem 'dotenv'
gem 'mongoid', '~> 6.0.0'
gem 'pg', '~> 0.18'
#gem 'mysql2',
gem 'sequel'
gem 'sqlite3'
gem 'activesupport', '~> 5.1'

gem 'whenever', require: false
gem 'rake'

group :development do
  gem 'byebug'
  gem 'capistrano'
end

group :development, :test  do
  gem 'database_cleaner'
  gem 'faker'
  gem 'factory_girl'
  gem 'guard-rspec'
  gem 'mongoid-rspec'
  gem 'rspec', '~> 3.6.0'
  gem 'rspec-expectations'
  gem 'serverspec'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
end

group :test do
  gem 'minitest', '~> 5.10.3'
  gem "capybara"
  gem "selenium-webdriver"
end