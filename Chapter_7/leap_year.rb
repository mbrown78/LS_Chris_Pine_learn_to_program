puts "Pick a starting year"
starting = gets.chomp.to_i

puts "Pick an ending year"
ending = gets.chomp.to_i

puts "These are the leap years"

for year in starting..ending
  next if year % 4 != 0
  next if year % 100 == 0 && year % 400 != 0 
    puts year
end

=begin 
another way (CP book)
puts 'Pick a starting year (like 1973 or something):'
starting = gets.chomp.to_i
puts 'Now pick an ending year:' 
ending = gets.chomp.to_i
puts 'Check it out... these years are leap years:'
(starting..ending).each do |year|
next if year % 4 != 0
next if year % 100 == 0 && year % 400 != 0 
puts year
end
=end