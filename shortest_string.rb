# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
  # This is your job. :)
  min = list.length
  name = list.first
  list.each do |item|
    if item.length < min
      min = item.length
      name = item
    end
  end
  return name
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p shortest_string(["Muhammad zair-UL-Haramain","Abid","Shabaz","Ali"]) == "Ali"
  p shortest_string(["zaid","Bilal","Abuzar","Ahmad","DJ"]) == "DJ"
  
end
