count = 99

loop do
    puts  "#{count} Bottles of Beer on the Wall."
    puts  "#{count} Bottles of Beer."
    count -= 1 
    puts "Take one down, pass it around, "
      "#{count} bottles of beer on the wall!"
    if count == 0 
        puts "No more bottles of beer on the wall"
    end  
    break if count <= 0 
end
