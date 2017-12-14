
def clock(&block)
	time = Time.new.hour

	if time > 12
		time -= 12
	end

	time.times(&block)

end

dong = Proc.new do
	  puts "dong"
end

clock(&dong)
