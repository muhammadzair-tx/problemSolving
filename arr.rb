## array 
ary = [  "fred", 10, 3.14, "This is a string", "last element", ]

ary.each do |i|
   puts i
end

var = ary[1].to_i + ary[2].to_f #not working yet
puts ary[1].to_i + ary[2].to_f
#-------------------------------------------------------------
# Hashes or Assosiative array


hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end
#-------------------------------------------------------------
#Ranges

(10..15).each do |n| 
    print n, ' ' 
 end
#-------------------------------------------------------------
 ### FLOW CONTROL
#-------------------------------------------------------------
## IF 
if num > 0 then
    puts "num variable is positive"
end
#-------------------------------------------------------------
#IF ELSE
age = 17
if age > 18
    puts "Driving license issued"
else
    puts "Driving license not permitted"
end
#-------------------------------------------------------------
#IF ELSE IF 
print "Enter a number: "
num = gets.to_i
if num < 0
    puts "#{num} is negative"
elsif num == 0
   puts "#{num} is zero"
elsif num > 0
   puts "#{num} is positive"
end
#-------------------------------------------------------------
#CASE STATMENT
print "Enter top level domain: "
domain = gets.chomp
case domain
    when "us"
        puts "United States"
    when "de" 
        puts "Germany"
    when "sk" 
        puts "Slovakia"
    when "hu" 
        puts "Hungary"
    else
        puts "Unknown"
end
#-------------------------------------------------------------
#DO     stop when condition is false 
# while i < 10  do #  do is a optional keyword here
#     ...
#  end
#-------------------------------------------------------------
#UNTIL          stop when condition is true
hours_left = 12
until hours_left == 0
    if hours_left == 1
        puts "There is #{hours_left} hour left"
    else
        puts "There are #{hours_left} hours left"
    end
    hours_left -= 1
end
#-------------------------------------------------------------
#FOR LOOP 
for i in 0..9 do
    puts "#{i}"
end
#-------------------------------------------------------------
#each loop 
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter",
    "Saturn", "Uranus", "Neptune"]

planets.each do |planet| 

    puts planet
end
#-------------------------------------------------------------
# BREAK NEXT  same as BREAK AND CONTINUE IN C++
#-------------------------------------------------------------
#REDO
#The redo statement restarts an iteration of a loop, without checking the loop condition.