# Method name to_roman
# Inputs      A number
# Returns     A String representing the number in English
# returns      Nothing

# Write a method that takes a positive integer as input and returns the input
# in "plain English."  For example,
#
#   to_english(1)     == "one"
#   to_english(12)    == "twelve"
#   to_english(123)   == "one hundred twenty three"
#   to_english(1234)  == "one thousand two hundred thirty four"
#   to_english(12345) == "twelve thousand three hundred forty five"
#   million - 6 zeros -billions 9zeros
# You can decide the largest power of 10 you wish to support, but you should
# support at least up to the billions.

# Hint #1
# Write down a bunch of examples and look for patterns.
# What words make up "special whens?" There are likely fewer than you think
# if you can find ways to combine simpler patterns into larger ones.
def one(d)
  case (d)
		when 1
			return "One"
		when 2
			return "Two"
		when 3
			return "Three"
		when 4
			return "Four"
		when 5
			return "Five"
		when 6
			return "Six"
		when 7
			return "Seven"
		when 8
			return "Eight"
		when 9
      return "Nine"
    when 10
      return "Ten"
    when 11
      return "Eleven"
    when 12
      return "Twelve"
    when 13
      return "Thirteen"
    when 14
      return "Fourteen"
    when 15
      return "Fifteen"
    when 16
      return "Sixteen"
    when 17
      return "Seventeen"
    when 18
      return "Eighteen"
    when 19
      return "Nineteen"
    when 20
      return "Twenty";
    when 30
      return "Thirty";
    when 40
      return "Fourty";	
    when 50
      return "Fifty";
    when 60
      return "Sixty";
    when 70
      return "Seventy";
    when 80
      return "Eighty";
    when 90
      return "Ninety";
    end
  end

def to_english(num)
  div, remndr = 1 ,1
  in_words = ""
  
  div = num / 1000
  remndr = num % 1000
  if (div != 0)
    in_words.concat(one(div)+" Thousand ")
    num = num % 1000
  end
  div = num / 100
  remndr = num % 100
  if (div != 0)
    in_words.concat(one(div)+" Hundred ")
    num = num % 100
  end
  div = num / 10
  remndr = num % 10
  if (div != 0)
    if(num <= 19 && num >= 11)
      in_words.concat(one(num))
      puts in_words
      return in_words
    else
      in_words.concat(one(div*10)+" ")
      num = num % 10
    end
  end
  if (remndr != 0)
    in_words.concat(one(num))
  end
  puts in_words
  return in_words
end


if __FILE__ == $PROGRAM_NAME
  # Hey, there are a bunch of lovely test whens above.  Start with those. )
  to_english(1) == "One"
  to_english(20) == "Twenty "
  to_english(123) == "One Hundred Twenty Three"
  to_english(319) == "Three Hundred Nineteen"
  to_english(1234)  == "One Thousand Two Hundred Thirty Four "
  to_english(12345) == "Twelve Thousand Three Hundred Forty Five "
  to_english(90345) == "Ninty Thousand Three Hundred Forty Five "

  to_english(1) == "One"
  to_english(12) == "Twelve"
  to_english(111) == "One Hundred Twenty Three"
  to_english(119) == "Three Hundred Twenty Three"
  to_english(1234)  == "One Thousand Two Hundred Thirty Four"
  to_english(1345) == "Twelve Thousand Three Hundred Forty Five"
end
