# Method name: rot_n
# Inputs:      A String to be encoded plus an integer to "rotate" by
# Returns:     A ROT-N encoded message
# Prints:      Nothing

# In a previous kata, we wrote a ROTn method.  In this one, we will write
# a ROT-N method.

# e.g., rotn(string) == rot_n(string, n)
def rot_n(string, n)
  rot = ""
  string.length.times do |i|
    ascii = string[i].ord
    if ascii >= 65 && ascii <= 90 then
      if (ascii + n) > 90
        rot.concat((((ascii+n) % 90)+64).chr)
      else
        rot.concat((ascii+n).chr)
      end
    elsif ascii >= 97 && ascii <= 122
      if (ascii + n) > 122
        rot.concat((((ascii+n) % 122)+96).chr)
      else
        rot.concat((ascii+n).chr)
      end
    else
      rot << " "
    end
  end
  return rot
end

if __FILE__ == $PROGRAM_NAME
  # See http://www.rot-n.com/ to generate test inputs and outputs
  p rot_n("Allah is the Greatest",1) == "Bmmbi jt uif Hsfbuftu"
  p rot_n("We are Pisces",3) == "Zh duh Slvfhv"
  p rot_n("Love is mysterious",25) == "Knud hr lxrsdqhntr"
  p rot_n("Respect The Telent",13) == "Erfcrpg Gur Gryrag"
  p rot_n("zair umer", 9) == "ijra dvna"
end
