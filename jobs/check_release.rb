begin
  Command.run("uname -a")
rescue Exception => msg
  puts "### #{msg}"
end