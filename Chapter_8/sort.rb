#Building and sorting an array. 

words = []

loop do 
  puts "Please enter words. Press enter when you are finished"
  input = gets.chomp
  words << input
  break if input.empty? # breaks when user pushes enter
end  

puts words.sort!