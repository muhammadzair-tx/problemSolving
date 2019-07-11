# Method name: run_length_encode
# Inputs:      A String that has been "run-length encoded"
# Returns:     The original string
# Prints:      Nothing

# This takes a run-length encoded string and "reconstructs" the original string.

def run_length_decode(string)
  decode = ""
  repeat = ""
  i = 0
  while i < string.length do
    digit = string[i].to_i
    repeat = string[i+1] * digit
    decode.concat(repeat)
    i += 2
  end
  return decode
end

if __FILE__ == $PROGRAM_NAME
  p run_length_decode("6W6A6W6A6B") == "WWWWWWAAAAAAWWWWWWAAAAAABBBBBB"
  p run_length_decode("1A1B") == "AB"
  p run_length_decode("1A") == "A"
  p run_length_decode("1M1i2s1i2s1i2p1i") == "Mississippi"
  p run_length_decode("") == ""
  # Write your own sanity tests here.
  # They should be the mirror image of the tests for run_length_encode
  #
  # If both methods are implemented correctly, this should always be true:
  #
  #   run_length_decode(run_length_encode(string)) == string
end
