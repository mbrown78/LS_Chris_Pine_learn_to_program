
def english_number number
  if number < 0 
    return 'Please enter a number that isn\'t negative'
  end
  if number == 0
    return 'zero'
  end



  num_string = '' # This is the string we will return, define it an start 'empty'

  ones_place = [ 'one', 'two', 'three',
                 'four', 'five', 'six',
                 'seven', 'eight', 'nine']

  tens_place = [ 'ten', 'twenty', 'thirty',
                 'forty', 'fifty', 'sixty',
                 'seventy', 'eighty', 'ninty']

  teenagers = [ 'eleven', 'twelve', 'thirteen',
                'fourteen', 'fifteen', 'sixteen',
                'seventeen', 'eighteen', 'nineteen']


  # "left" is how much of the number we still have to write
  # "write" is which part we are writing out at the time

  left = number

  # trillions
  write = left/1000000000000
  left = left - write*1000000000000

  if write > 0
    trillions = english_number write
    num_string = num_string + trillions + ' trillion'

    if left > 0
      num_string = num_string + ' '
    end
  end

  # billions
  write = left/1000000000
  left = left - write*1000000000

  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'

    if left > 0
      num_string = num_string + ' '
    end
  end

  # millions
  write = left/1000000
  left = left - write*1000000

  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'

    if left > 0
      num_string = num_string + ' '
    end
  end

  # thousands
  write = left/1000
  left = left - write*1000

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'

    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/100 # how many hundreds left
  left = left - write*100 # subtract off those hundreds

  if write > 0
    
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'

    if left > 0
      # adds a space
      num_string = num_string + ' '
    end
  end

  write = left/10 # how many tens left
  left = left - write*10 # subtract off those tens

  if write > 0
    if ((write == 1) and (left > 0))
      # exception for teenagers
      num_string = num_string + teenagers[left-1]
      # -1 because of the array ordering [0] is eleven etc.
      # with teenagers the digit in the ones place is taken care of so nothing left
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      # add a space
      num_string = num_string + ' '
    end
  end

  write = left # how many ones left
  left = 0 # subtract off those ones

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  # now we just return the num_string

  num_string
end

count = 10

loop do
    puts english_number(count) + " Bottles of Beer on the Wall."
    puts english_number(count) + " Bottles of Beer"
    count -= 1
    puts 'Take one down, pass it around, ' +
     english_number(count) + ' bottles of beer on the wall!'
    if count == 0 
        puts "No more bottles of beer on the wall"
    end  
    break if count <= 0 
end