environment ||= 'production'

require 'date'
require 'time'

PATH = `pwd`
GOTO = "cd #{ PATH }"
RUBY = `which ruby`

date_log = DateTime.now.strftime("%Y%m%d").to_s

every 30.minutes do
  command "touch logs/#{date_log}_halfhours.log"
  command "#{ GOTO } && #{ RUBY } jobs/check_ruby.rb #{ environment } >> log/#{date_log}_halfhours.log"
end

every 1.hour do
  command "touch logs/#{date_log}_hours.log"
  command "#{ GOTO } && #{ RUBY } jobs/check_kernel.rb #{ environment } >> log/#{date_log}_hours.log"
  command "#{ GOTO } && #{ RUBY } jobs/check_release.rb #{ environment } >> log/#{date_log}_hours.log"
end
