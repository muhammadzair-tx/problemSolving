# Classes: Die

# This is a variation on the previous Die class.  Rather than hard-coding
# the number of sides to 6, allow the user to initialize a new die with any
# number of sides.  Die#roll will then return a random number between
# 1 and the value the user initialized the die with.

# See the code below from examples.

class Die
  def initialize(sides)
    # This is your job. :)
    # Hint: you'll need to set an instance variable so that your Die instance
    # can remember what value the user passed into Die.new
    @sides = sides
  end
def slides
  @slide
end
  def roll
    # This is your job. :)
    # Hint: You'll need to reference an instance variable in this method.
    return rand(@sides) + 1
  end
end

if __FILE__ == $PROGRAM_NAME
  die_10 = Die.new(10)
  die_20 = Die.new(20)
  die_6  = Die.new(6)

  roll_count = 5


  puts "Rolling the die #{roll_count} times. Valid numbers are between 1 and 10."
  puts ""

  1.upto(roll_count) do |i|
    result = die_10.roll
    faces = die_10.slides
    unless (1..10).include?(result)
      fail "die.roll returned #{result.inspect}, " \
            "but it must return a number between 1 and #{die_10.slides}  (inclusive)"
    else
      puts "Roll #{i}: #{result}"
    end
  end

  puts "Rolling the die #{roll_count} times. Valid numbers are between 1 and 20."
  puts ""

  1.upto(roll_count) do |i|
    result = die_20.roll
    unless (1..20).include?(result)
      fail "die.roll returned #{result.inspect}, " \
            "but it must return a number between 1 and #{die_20.slides}  (inclusive)"
    else
      puts "Roll #{i}: #{result}"
    end
  end

  puts "Rolling the die #{roll_count} times. Valid numbers are between 1 and 6."
  puts ""

  1.upto(roll_count) do |i|
    result = die_6.roll
    unless (1..6).include?(result)
      fail "die.roll returned #{result.inspect}, " \
            "but it must return a number between 1 and #{die_6.slides}  (inclusive)"
    else
      puts "Roll #{i}: #{result}"
    end
  end
  # die_10.roll should return a random number between 1 and 10 (inclusive)
  # die_20.roll should return a random number between 1 and 20 (inclusive)
  # die_6.roll should return a random number between 1 and 6 (inclusive)
end
