set :user,      'docker'
set :branch,    'staging'
set :deploy_to, '/home/docker/apps'
set :tmp_dir,   '/home/docker/tmp'

server '192.168.64.3',
  user: 'docker',
  roles: %w{web app},
  ssh_options: {
    forward_agent: true
  }

set :default_environment, {
  'PATH' => "$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
}

after 'deploy:restart', 'whenever:update_crontab'
