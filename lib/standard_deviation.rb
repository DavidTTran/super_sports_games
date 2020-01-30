ages = [24, 30, 18, 20, 41]

variance = 0 # variance equals each value squares, summed, then divided by the number of values

ages.each do |age|
  variance += (age ** 2)
  variance / ages.count()
end

puts variance
stand_deviation = 0

# When you find the standard deviation, print it out
