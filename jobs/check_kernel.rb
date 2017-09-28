begin
  Command.run("uname -r")
rescue Exception => msg
  puts "### #{msg}"
end