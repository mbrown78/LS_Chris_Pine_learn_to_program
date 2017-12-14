puts "how many would you like to count"
answer = gets.chomp.to_i

def recur_bottles(count)
    if count == 0  # base case 
        puts "No more bottles of beer on the wall"
        return 
    end 
    puts  "#{count} Bottles of Beer on the Wall."
    recur_bottles(count -=1)
end

recur_bottles(answer)