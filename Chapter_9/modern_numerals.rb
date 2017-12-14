def modern_roman_num(num)
  roman = ""

# find how many thousands
  thousands = num / 1000   # 1999 / 1000 = 1
  roman <<  "M" * thousands   # >> M

# take away the thousands digit place eg 1999 > now 999
  num = num % 1000

# repeat the process with hundreds

  hundreds = num / 100
# take into account the exception of 9, 4, 5
   if hundreds == 9
     roman << "CM"
   elsif hundreds == 4
     roman << "CD"
   elsif hundreds == 5
     roman << "D"
   else
     roman << "C" * hundreds
   end
   
   num = num % 100
   
   # tens
   tens = num / 10
   if tens == 9
     roman << "XC"
   elsif tens == 4
     roman << "XL"
   elsif tens == 5
     roman << "L"
   else
     roman << "X" * tens
   end

   num = num % 10
   # ones

   if num == 9
     roman << "IX"
   elsif num == 4
     roman << "IV"
   elsif num == 5
     roman << "V"
   else
     roman << "I" * num
   end
   p roman
end

modern_roman_num(9)
modern_roman_num(4)
modern_roman_num(5)
modern_roman_num(2)
modern_roman_num(1999)