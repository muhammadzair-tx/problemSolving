# Method name: print_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall
#         at its tallest
#
# For example, print_pyramid(4) should print
#
# *
# **
# ***
# ****
# ***
# **
# *

# This is how we require the print-triangle.rb file in the current folder.
# We can now use the "print_triangle" and "print_line" methods we defined
# there -- as if we defined them here!

require_relative "./print_triangle"

def print_dtriagle(count)
  until count < 1 
    print '*'
    count -= 1
  end
end

def print_pyramid(height)
  # This is your job. :)
  # Suggestion: you can call print_triangle to print out the first, "upward"
  # half of the pyramid. You'll have to write code to print out the second,
  # "downward" half of the pyramid.
  
  print_triangle(height)
  until height < 1
    print_dtriagle(height-1)
    height -= 1
    puts ""
  end
  
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  # print_pyramid(1)
  # print "\n\n" # This is here to make the separation between triangles clearer
  # print_pyramid(2)
  # print "\n\n" # This is here to make the separation between triangles clearer
  # print_pyramid(3)
  # print "\n\n" # This is here to make the separation between triangles clearer
  print_pyramid(3)
end
