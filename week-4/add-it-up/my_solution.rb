
# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.
#create method total that accepts an array parameter.

#utilize .each function to iterate through every element of the array

#ave array values add to variable sum

#output sum

# 1. total initial solution
def total(array)
	sum = 0
	array.each { |x| sum = sum + x }
		return sum
end


# 3. total refactored solution
def total(array)
	array.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.
#define method sentence_maker that accepts array of strings parameter

#utilize .each function to iterate through each array element.

#add spaces, capitilzation, and period.

#return string

# 5. sentence_maker initial solution
def sentence_maker(words)
  sentence = ""
  words[0].capitalize!
  words.each do |x|
  if x == words.last
  sentence=sentence + x.to_s + "."
  else
  sentence=sentence + x.to_s + " "
  end
  end
  return sentence
end
# 6. sentence_maker refactored solution
def sentence_maker(strings)
	sentence = strings.join(' ')
	sentence.capitalize!
	sentence << '.'
end