# variable
# operator

=begin 
Name Begins With	|   Variable Scope
    $	            |   A global variable
    @	            |   An instance variable
    [a-z] or _	    |   A local variable
    [A-Z]	        |   A constant
    @@	            |   A class variable

Variables in class
# Local variable
    start with  _ or any lower variable 
# Instance variable
    That means that instance variables change from object to object.
    start with @
# Class variable 
    Class variables are available across different objects.
    start with @@
# Global variable
    Class variables are not available across classes. 
    If you want to have a single variable, which is available across classes, you need to define a global variable. 
    The global variables are always preceded by the dollar sign ($).
=end

###variable
#contstant 
PI = 3.1415 # this is the constant variable start with upper letter
$global_variable = 10 #global variable
class Customer
    @@no_of_customer = 0
    def initialize(id, name, addr)
       @cust_id = id
       @cust_name = name #istance variable 
       @cust_addr = addr
    end
    def display_details()
       puts "Customer id #@cust_id"
       puts "Customer name #@cust_name"
       puts "Customer address #@cust_addr"
    end
 end
 
 # Create Objects
 cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
 cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
 
 # Call Methods
 cust1.display_details()
 cust2.display_details()

 #Pseudo-Variables 
 #self - true - false - nil - __FILE__ - __LINE__
 
### operators


### asign the value

a, b, c = 10, 20, 30 
a , b = b , a

# 1..10     inclusive print 1 to 10
# 1...10    exlusive print 1 to 9
# 10<=>20   combined comparison operator. give -1 return 0 if both are equal return 1 if first is greater
# 1.eql?(1.0)   1 == 1.0 returns true, but 1.eql?(1.0) is false. both value and the data type should be same 
# (1...10) === 5    returns true.
# equal?        True if the receiver and argument have the same object id.
# if aObj is duplicate of bObj then 
#     aObj == bObj is true, 
#     a.equal?bObj is false 
#     but a.equal?aObj is true.

#### defined operator
defined? variable # True if variable is initialized
defined? method_call # True if a method is defined  
        defined? puts        # => "method"
        defined? puts(bar)   # => nil (bar is not defined here)
# True if a method exists that can be called with super user
defined? super    #return "super" if can be called else "nil"
defined? yield    # => "yield" (if there is a block passed)
defined? yield    # => nil (if there is no block)

# Remember in Ruby, classes and methods may be considered constants too
