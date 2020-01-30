require './games.rb'
require './event.rb'

puts "Welcome to the, copyright friendly, SUPER SPORTS GAMES!!"
sleep(1)
puts "Please enter in the year!"
year = gets.chomp.to_i
sleep(.5)
game = Games.new(year)

puts "We're proud to be the hosts of the #{year} SUPER SPORTS GAMES!"
sleep(1)
puts "Each year we leave it up to our sponsors for the events we run!"
sleep(1)
puts "What's the name of the first event you'd like to host?"

event1 = gets.chomp
sleep(1)
puts "Each event must have 3 contestants!"
sleep(.5)
puts "Please enter the age of contestant 1!"
contestant1 = gets.chomp
puts "Please enter the age of contestant 2!"
contestant2 = gets.chomp
puts "Please enter the age of contestant 3!"
contestant3 = gets.chomp
