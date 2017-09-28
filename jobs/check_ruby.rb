begin
  Command.run("ruby -v")
rescue Exception => msg
  puts "### #{msg}"
end