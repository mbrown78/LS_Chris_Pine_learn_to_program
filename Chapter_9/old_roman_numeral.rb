
def old_roman_num(num)
  if num < 1
    puts " Please use a positive number"
    return
  end

roman = ""

roman <<  "M" * (num / 1000) #thousands
roman <<  "D" * (num % 1000 / 500) #five hundred : 1900 % 1000 = 900  900 / 500  = 1
roman <<  "C" * (num % 500 / 100) #hundreds : 1900 % 500 = 400  / 100 = 4
roman <<  "L" * (num % 100  / 50)  #fifty:  1950 % 100 = 50 = 50/50 =1
roman <<  "X" * (num % 10 / 10) # tens
roman <<  "V" * (num % 10 / 5) # fives
roman <<  "I" * (num % 5 / 1) # ones

p roman

end

old_roman_num(1999)
