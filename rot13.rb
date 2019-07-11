# Method name: rot13
# Inputs:      A String to be encoded in ROT13
# Returns:     A ROT13-encoded string
# Prints:      Nothing

# ROT13 is short for "rotate 13" and is the simplest example of a
# "Caesar cipher".  See http://en.wikipedia.org/wiki/ROT13

# ROT13 works by taking a string and "rotating" all the characters in that
# string 13 places to the right in the alphabet, with "z" wrapping around to
# the beginning of the alphabet.
#
# In other words, every letter from the top row in this table is replaced with
# the corresponding letter in the bottomr row
#
#   ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
#   NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm
#
# "ROT13" is called a Caesar cipher because Julius Caesar used such letter
# replacement schemes to "encrypt" his communication.
# require 'pry'
def rot13(string) #puts (ascii % 90)+64+13  #T-G  84-71
  # binding.pry
  rot = ""
  string.length.times do |i|
    ascii = string[i].ord
    if ascii >= 65 && ascii <= 90 then
      if (ascii + 13) > 90
        rot.concat((((ascii+13) % 90)+64).chr)
      else
        rot.concat((ascii+13).chr)
      end
    elsif ascii >= 97 && ascii <= 122
      if (ascii + 13) > 122
        rot.concat((((ascii+13) % 122)+96).chr)
      else
        rot.concat((ascii+13).chr)
      end
    else
      rot << " "
    end
  end
  return rot
end

if __FILE__ == $PROGRAM_NAME
  #See http://www.rot-n.com/ to generate test inputs and outputs
  p rot13("The Quick Brown Fox Jumps Over The Lazy Dog") ==
    "Gur Dhvpx Oebja Sbk Whzcf Bire Gur Ynml Qbt"
  p rot13("The quick") == "Gur dhvpx"
  p rot13("ZBA") == "MON"
  
end

# a 97
# z 122
# A 65
# Z 90