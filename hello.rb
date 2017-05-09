#!/bin/env ruby

print "What is your name?"
name = gets
name = name.chomp() #removes the CRLF from name

if name == "cheesy"
  puts "You don't need this tutorial!"
else
  puts "Hello" + name
end
