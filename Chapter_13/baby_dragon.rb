class Dragon
  def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # it is full
		@stuff_in_intestine = 0 # it is hungry

		puts "#{@name} is born"
	end

	def feed
		puts " you fed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts "you walked #{@name}."
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts "you put #{@name} to bed"
		@asleep = true
		 3.times do
			 if @asleep
				 passage_of_time
			 end
			 if @asleep
				 puts "#{@name}snores, filling the room with smoke"
			 end
		 end
	end

	def toss
		puts "You tossed #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
		passage_of_time
	end

	def rock
		puts "you rocked#{@name} gently"
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_time
		if @asleep
			@asleep = false
			puts "but wakes up when you stop"
		end
	end

	def command
			puts "You can feed, walk, put to bed, toss, and rock. To see commands again type command"
  end

	private

	def hungry?
# Usually, we do this only if the method
# returns true or false, like this:
  @stuff_in_belly <= 2
  end

  def poopy?
	 @stuff_in_intestine >= 8
  end

	def passage_of_time
	   if @stuff_in_belly > 0
	    # Move food from belly to intestine.
			@stuff_in_belly = @stuff_in_belly -1
	    @stuff_in_intestine = @stuff_in_intestine + 1
	   else # Our dragon is starving!
			 if @asleep
	        @asleep = false
	        puts 'He wakes up suddenly!'
		   end
	     puts "#{@name} is starving! In desperation, he ate YOU!"
	￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼     exit # This quits the
	    end

		  if @stuff_in_intestine >=10
			   @stuff_in_intestine = 0
			   puts "Whoops! #{@name} had an accident"
	    end

		  if hungry?
				if@asleep
					@asleep = false
				  puts 'He wakes up suddenly!'
				end
				puts "#{@name}'s stomach grumbles..."
		  end

      if poopy?
				if @asleep
					@asleep = false
					puts "He wakes up suddenly"
				end
				puts "#{@name} does the potty dance"
			end
	end
end

puts  ">>Please give your baby dragon a name "
name = gets.chomp
baby_dragon = Dragon.new(name)

puts "You can feed, walk, put to bed, toss, and rock"

loop do
    puts "What would you like to do with #{baby_dragon}?"
    input = gets.chomp.downcase

    case input
    when "feed"
        baby_dragon.feed
    when "walk"
        baby_dragon.walk
    when "put to bed"
        baby_dragon.put_to_bed
		when "toss"
	      baby_dragon.toss
    when "rock"
        baby_dragon.rock
		when "command"   #if put in hidden it doesnt work
			  baby_dragon.command
    when "stop"
        break
    else
        puts "#{baby_dragon}can't do that. type 'stop' to exit the game"
    end
end