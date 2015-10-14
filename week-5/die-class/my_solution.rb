# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:die (class) - accepting some positive integer - sides - roll method
# Output: a random value on the new die created
# Steps: make sure sides is > 0 or else raise arguement error - declare instance variable
# definte sides and generate random value between 1 and sides


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    if sides < 1
    	raise ArgumentError.new("Please enter a positive integer")
    end
    @sides = sides
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    rand(1..@sides)
  end
end



# 3. Refactored Solution
class Die
  def initialize(sides)
    # code goes here
    if sides < 1
      raise ArgumentError.new("Please enter a positive integer")
    end
    @sides = sides
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    rand(1..@sides)
  end
end






# 4. Reflection
#What is an ArgumentError and why would you use one?
#Arguement error is to ensure a proper argument is passed otherwise sending that message.
#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#rand was the only ruby method i learned. Yes it was extremely simple and intuitive. 
#What is a Ruby class?
#A ruby class is an ruby object that has some special behavior 
#Why would you use a Ruby class?
#when you need methods spread out across different files - creating a class can help solve that situation
#What is the difference between a local variable and an instance variable?
#local variables have a scope limited to the method in which they are called. instance variables can be seen in all methods in a class. local variables are declared in the method and instance can be outside a method.
#Where can an instance variable be used?
#Instance variables are best served in a class with multiple methods.