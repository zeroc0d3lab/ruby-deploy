# config valid only for current version of Capistrano
lock "3.9.1"

set :application, 'apps'
set :repo_url, 'git@github.com:zeroc0d3lab/ruby-deploy.git'

set :linked_files, fetch(:linked_files, []).push(
  'config/database.yml', 'config/mongoid.yml'
)

set :linked_dirs, fetch(:linked_dirs, []).push(
  'log', 'tmp/cache'
)