# Time.new(year, month, day, hour, min, sec)

birth = Time.new(1986, 9, 25, 10, 35)


puts "The exact second i was born was #{birth.to_i}."
puts "------------------------"

puts "I will be one billion seconds old on #{Time.at(birth.to_i + 1_000_000_000)}."

#Time.at
#Creates a new Time object with the value given by time
#Time.at(946702800)  #=> 1999-12-31 23:00:00 -0600