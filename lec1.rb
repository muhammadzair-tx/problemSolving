#my practice step by step basic
=begin
this is a multiple line comment 
enclose within  the  begin and end 
An "octothorpe" is also called a "pound", "hash", "mesh", or any number of names
=en
#-------------------------------------------------------------
puts "any thing you want to print on screen use [puts] puts add a newline while print don't"
print "or you can use [print] what is the difference b/w them"

BEGIN{
    puts "this is a string in BEGIN the part"
}

puts "this the a program body"

END{ 
    puts "this is a string in End the part -- not matter if you put this before the Begin part"
}
=end
#-------------------------------------------------------------

print <<EOF
["Here Document"]    
    This is the first way of creating
    here document ie. multiple line string.
EOF
#-------------------------------------------------------------
# puts "Get a input from a user"
# puts "Enter your name"
# name = gets #for string 
=begin
gets VS gets.chomp
name is variable name and gets is a fucntion that take input from user 
and convert it into string name "zair\n" notice '\n' in the end 
if you dont want to include this '\n' into your string you can do this
name = get.chomp this will just store "zair"
=end
# puts "hello " + name

# puts "Enter your Age"
# age = gets.to_i #for integer value now age is become an integer data type
# puts "your age is #{age}"
# #same for the floats [gets.to_f]

########### Functions
#----------------------
def hello
    puts "hello World !!"
end
hello() # this is the best practice because this can distinct funciton from variable
hello

#now with parameter --------------------
def say_myname(name) #this name parameter can act as multiple data type like integer string float this is the beauty of the ruby
    puts name
end 
say_myname("say my name -> zair");
say_myname("say my name -> umer");

#now with default parameter-------------
# def brother(a = "Ruby", b = "Perl")
#     puts "#{a} and #{b} are just like the brothers"
# end
# brother "zair","Ahmad"
# brother("C","C++")
# brother ("laravel",".net") #no need of any braces

#now returning multiple value from a method--------
def val
    a = 10
    b = 20
    c = 30 
    return a,b,c 
end 

d = val #val the function 
puts d

#now passing the multiple parameter 

def team(*members)
    puts "the Total team members #{members.length}"

    for i in 0...members.length
        puts " #{i} - #{members[i]} "
    end
end

team("Sir Shabaz","Sir Waleed","Sir Bilal","Sir Ghayyur","Zair")
team("Sir AbuZar","Salman chu")

#Ruby 2.4.1
#Rails 5.1.4

# launch everytime when system is reboot
# systemctl start postgresql
# systemctl enable postgresql







#important notes 
=begin 
    a + b is interpreted as a+b ( Here a is a local variable)
    a  +b is interpreted as a(+b) ( Here a is a method call) 
=end