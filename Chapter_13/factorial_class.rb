class Integer
  def factorial
    if self < 0
     puts  'You can\'t take the factorial of a negative number!'
	  end

		if self <= 1
      1
    else
     return self * (self-1).factorial
    end
  end
end

puts (6).factorial

#"we defined a method in the Integer class. This makes
# it an integer method and now all integers can use it.
# inside that method we use self to refer to an object
# (the integer using the method)." Chris Pine - learn to program