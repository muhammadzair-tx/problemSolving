# Method name: to_roman
# Inputs:      A number
# Returns:     A String representing the number in roman numerals
# Prints:      Nothing

# to_roman takes a number as input and returns that number using Roman numerals
# See http://en.wikipedia.org/wiki/Roman_numerals

# It can be tricky to handle the cases where "IV" means 4.  As a first pass,
# don't hesitate to implement a simpler version where 4 is denoted by "IIII".
#
# Remember: the priority is FEEDBACK, even if your implementation can't handle
# every single case.
def one(d)
  case (d)
		when 1
			return "I" #1
		when 2
			return "II" #5
		when 3
			return "III" #10
		when 4
			return "IIII" #50
  end
end

def to_roman(num)
  div, remndr = 1 ,1
  in_words = ""
  
  div = num / 1000
  remndr = num % 1000
  if (div != 0)
    in_words.concat("M")
    num = num % 1000
  end
  
  div = num / 500
  remndr = num % 500
  if (div != 0)
    in_words.concat("D")
    num = num % 500
  end

  div = num / 100
  remndr = num % 100
  if (div != 0)
    in_words.concat("C")
    num = num % 100
  end

  div = num / 50
  remndr = num % 50
  if (div != 0)
    in_words.concat("L")
    num = num % 50
  end

  div = num / 10
  remndr = num % 10
  if (div != 0)
    in_words.concat("X")
    num = num % 10
  end

  div = num / 5
  remndr = num % 5
  if (div != 0)
    in_words.concat("V")
    num = num % 5
  end

  if (remndr != 0)
    in_words.concat(one(remndr))
  end
  puts in_words
  return in_words
end

if __FILE__ == $PROGRAM_NAME
  p to_roman(5) == "V"
  p to_roman(10) == "X"
  p to_roman(55) == "LV"
  p to_roman(550) == "DL"
end
