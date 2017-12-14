class OrangeTree

	def initialize
		@height = 0
		@oranges = 0
		@water = 10
		puts "your tree is alive"
	end

	def height
		one_year_passes
		return @height
	end

	def count_the_oranges
		if  @oranges >= 3
			p "Pick an orange"
			@oranges -= 1
		else
			p "There are not enought oranges to pick"
		end
		one_year_passes
	end

	def water_the_tree
		@water += 5
		p "your has #{@water} litres of water. It always needs 5"
		return "your tree has been watered"
	end

  private

	def thirsty?
    @water <= 5
	end

	def one_year_passes
		@height += 1
		@oranges += rand(2..5)
		@water -= 1  
		
    p "your tree is now #{@height} metres tall"
		p "your tree is now has #{@oranges} oranges "
	

		if @water < 0
			"puts you didnt water your tree enough it has died."
		end

		if thirsty?
			p "your tree needs water"
		end
  end
end  


tree = OrangeTree.new
p tree.water_the_tree
p tree.count_the_oranges
