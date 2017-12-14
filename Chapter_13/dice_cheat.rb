class Die
   def initialize
  	 roll
   end
  
   def roll
    @number_showing = 1 + rand(6)
   end
   
   def showing
  	@number_showing
   end
  
   def cheat(num)
    if (num > 6 || num < 1)
      puts "Please only cheat using numbers from 1 to 6"
    else
      @number_showing = num
    end
   end
end

dice = Die.new
p dice.cheat(2)