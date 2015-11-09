# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#define reverse method that takes argument(string)
#put string into array
#reverse words
#join array into single string
#return

# Initial Solution
def reverse_words(words)
	array = words.split
	array.each do |x|
		x.reverse!
	end
	return array.join(" ")
end


# Refactored Solution
def reverse_words(words)
	array = words.split
	array.each do |x|
		x.reverse!
	end
	return array.join(" ")
end
