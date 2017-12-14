
puts ">> What year were you born in?"
year = gets.chomp.to_i

puts ">> What month were you born in?"
month = gets.chomp.to_i

puts ">> What day were you born on?"
day = gets.chomp.to_i

#Time.new creates a time object eg 1986-09-25 00:00:00 +0000 
# by adding .year , .month , .day at the end we can extract the 
# unit we need
birth = Time.new(year,month,day).year
time = Time.new.year  # get the current year
difference =  time.to_i - birth.to_i  

difference.times do
  puts "spank"
end