# Numbers to Commas Solo Challenge

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#some integer value
# What is the output? (i.e. What should the code return?)
#the integer value with coresponding commas
# What are the steps needed to solve the problem?
#Check if the integer has a 1000th place - if so insert comma
#check if integer has 1000000th place - if so insert comma

# 1. Initial Solution
def separate_comma(num)
	array = num.to_s.split("")
	if array.length == 8
		array.insert(2, ",")
		array.insert(6, ",")
	elsif array.length == 7
		array.insert(1, ",")
		array.insert(5, ",")
	elsif array.length == 6
		array.insert(3, ",")
	elsif array.length == 5
		array.insert(2, ",")	
	elsif array.length == 4
		array.insert(1, ",")
	end
	return array.join("")
end

# 2. Refactored Solution
def seperate_comma(num)
	array = num.to_s.reverse.split("")
	if array.length > 6
		array.insert(3, ",")
		array.insert(7, ",")
	elsif array.length > 3
		array.insert(3, ",")
	end
	return array.reverse.join("")
end


# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
#my process for breaking down the problem was identifying how to identify the 1000th and 1000000th placeholder.
#Was your pseudocode effective in helping you build a successful initial solution?
#my pseudocode wasn't overly detailed, but it gave me a decent framework for what I was going to attempt.
#What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
#originally .split, .join to make a string an array and visaversa. and .insert to add the coma to the corresponding array element.
#in the refactor, i used .reverse, which made it logistically easier to place the comma properly.
#How did you initially iterate through the data structure?
#to be honest, i don't quite iterate through the data structure.
#Do you feel your refactored solution is more readable than your initial solution? Why?
#my refactored solution is much better because it cuts out so much unnecessary code.