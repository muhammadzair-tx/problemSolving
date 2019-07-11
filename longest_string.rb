# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4

def longest_string(list)
  # This is your job. :)
  max = list.length
  name = list.first
  list.each do |item|
    if item.length > max
      max = item.length
      name = item
    end
  end
  return name
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p longest_string(["Muhammad zair-UL-Haramain","Abid","Shabaz","Ali"]) == "Muhammad zair-UL-Haramain"
  p longest_string(["zaid","Bilal","Abuzar","Ahmad"]) == "Abuzar"

end
