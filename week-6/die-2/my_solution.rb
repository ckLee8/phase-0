# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Some array of string
# Output: A random value from the array
# Steps: Define class die - raise error if array length isn't greater than 0
#set instance variable to class. return array length. return random value from array.


# Initial Solution

class Die
  def initialize(labels)
    unless labels.length > 0
    	raise ArgumentError.new("Empty array")
    end
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample
  end
end



# Refactored Solution
class Die
  def initialize(labels)
    unless labels.length > 0
    	raise ArgumentError.new("Empty array")
    end
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample
  end
end







# Reflection
#What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#I used a different method altogether for the roll method. Everything else was about the same.
#What does this exercise teach you about making code that is easily changeable or modifiable? 
#Changeable code makes future project easier. Its possible to reuse code too.
#What new methods did you learn when working on this challenge, if any?
#I used .sample to return a random array value.
#What concepts about classes were you able to solidify in this challenge?
#Just making sure to access the correct variable.