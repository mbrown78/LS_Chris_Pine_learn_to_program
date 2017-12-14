
def convert_to_roman(roman)
  numerals = {
          'M' => 1000,
          'D' => 500,
          'C' => 100,
          'L' => 50,
          'X' => 10,
          'V' => 5,
          'I' => 1
  }
  #step1: set value to zero
  total = 0

  #step1:start from rigth hand side
  index = roman.length - 1

  while index >= 0
    character = roman[index]  #X
    if index == 0  # exit
			total += numerals[character] # eg X > 10 inputing the key get the value
			break
		end
  #get the key  of the last character and add it to the total
  #arabic = numerals[character] hash[key] =returns> value
  total += numerals[character]
  prev = roman[index - 1]# character minus one >> I

   # for exceptions of 9 and 4
  if numerals[character] > numerals[prev]
    	total -= numerals[prev]  #-1
    	index -= 1   # each cycle count down
	end
  index -= 1

end
  return  total
end

p convert_to_roman("XIX")