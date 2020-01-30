require './games.rb'
require './event.rb'

puts "Welcome to the, copyright friendly, SUPER SPORTS GAMES!!"
sleep(1)
puts "Please enter in the year!"

year = gets.chomp.to_i
sleep(1)
game = Games.new(year)

puts "We're proud to be the hosts of the #{year} SUPER SPORTS GAMES!"
sleep(1)
puts "Each year we leave it up to our sponsors for the events we run!"
sleep(1)
puts "What's the name of the first event you'd like to host?"
event1_name = gets.chomp.capitalize
sleep(1)

puts "Each event must have 3 contestants!"
sleep(1)
puts "Please enter the age of contestant 1!"
contestant1 = gets.chomp.to_i
puts "Please enter the age of contestant 2!"
contestant2 = gets.chomp.to_i
puts "Please enter the age of contestant 3!"
contestant3 = gets.chomp.to_i

event1 = Event.new(event1_name, [contestant1, contestant2, contestant3])
game.add_event(event1)

puts "What's the name of the second event you'd like to host?"
event2_name = gets.chomp.capitalize

puts "Each event must have 3 contestants!"
sleep(1)
puts "Please enter the age of contestant 1!"
contestant4 = gets.chomp.to_i
puts "Please enter the age of contestant 2!"
contestant5 = gets.chomp.to_i
puts "Please enter the age of contestant 3!"
contestant6 = gets.chomp.to_i

event2 = Event.new(event2_name, [contestant4, contestant5, contestant6])
game.add_event(event2)


require "pry"; binding.pry
