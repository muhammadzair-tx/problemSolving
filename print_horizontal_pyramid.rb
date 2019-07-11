# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall
#         at its tallest
#
# For example, print_horizontal_pyramid(4) should print
#
#    *
#   ***
#  *****
# *******

def print_horizontal_pyramid(height)
i=1
k=height
t=height

i.upto(k) do
  t.times do
    print ' '
  end

  (2 * i - 1).times do
    print '*'
  end

  print "\n"

  t -= 1
  i += 1
end
end

if __FILE__ == $PROGRAM_NAME
  print_horizontal_pyramid(5)
  print_horizontal_pyramid(3)
end
