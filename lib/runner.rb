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
puts "Each year we leave it up to our sponsors for the events, up to 3, that we run!"
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

puts "Would you like to host another event? (yes/no)"

response = gets.chomp.downcase
  number_of_events = 1
  while response != 'no' || events != 3
    if response == 'yes'
      if number_of_events == 2
        puts "What's the name of the next event you'd like to host?"
        event3_name = gets.chomp.capitalize

        puts "Each event must have 3 contestants!"
        sleep(1)
        puts "Please enter the age of contestant 1!"
        contestant7 = gets.chomp.to_i
        puts "Please enter the age of contestant 2!"
        contestant8 = gets.chomp.to_i
        puts "Please enter the age of contestant 3!"
        contestant9 = gets.chomp.to_i

        event3 = Event.new(event3_name, [contestant7, contestant8, contestant9])
        game.add_event(event3)
        number_of_events += 1
        response = gets.chomp.downcase

      else
        puts "What's the name of the next event you'd like to host?"
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
        number_of_events += 1
        puts "Would you like to host another event? (yes/no)"
        response = gets.chomp.downcase
      end
    elsif response != 'yes' || 'no'
      puts "Please enter a valid input, 'yes' or 'no'"
      response = gets.chomp.downcase
    end
  end

  puts "LET THE GAMES BEGIN! This year we're proud to host..."


require "pry"; binding.pry
