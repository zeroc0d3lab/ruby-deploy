Mongoid.load!(File.join(File.dirname(__FILE__), '../mongoid.yml'), ENV['JOB_ENV'])
client = Mongoid::Clients.clients.default
