# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: some integer
# Output: high, low, correct - depending on guess
# Steps: create guess and solved? method. set class variables. if guess < answer return low, if guess > answer return high, else return correct
#if guess = answer return true, else false


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if guess > @answer
  		return :high
  	elsif guess < @answer
  		return :low
  	else
  		return :correct
  	end

  end
  def solved? 
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end
end




# Refactored Solution

def guess(guess)
  	@guess = guess
  	if guess > @answer
  		return :high
  	elsif guess < @answer
  		return :low
  	else
  		return :correct
  	end

  end
  def solved? 
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end
end




# Reflection
#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#i suppose instance variables and methods are like settings applicable to one particular siutation. They only work in that circumstance.
#When should you use instance variables? What do they do for you?
#Instance variables should only be used in the methods they are being invoked.
#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#No, it was rather simple logic. Simple if, else statements sufficed in completing this challenge.
#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#I think symbols can be useful possibly for more complex problems? or so that you can build on to the current code.