# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# define function inwords with argument: integer(int)
# declare string variable as empty string
# Determine the ones, tens, hundreds, place of integer pluged 
# concat necessary string to convert int to string
# return string

# Initial Solution

def in_words(int)
	words_ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	words_teens = ["", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen"]
	words_tens = ["", "ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninty"]
	hundreds = int / 100
	tens = (int / 10) % 10
	ones = int % 10
	if int > 999
		return "Enter an integer less than 1000"
	elsif int > 99 && int < 1000
		answer = "#{words_ones[hundreds]} hundred #{words_tens[tens]} #{words_ones[ones]}"
		answer.gsub!(/ +/, ' ')
		return answer
	elsif int > 9 && int < 100
	    if int > 10 && int < 20
	        answer = "#{words_teens[ones]}"
	        return answer
		else
		    answer = "#{words_tens[tens]} #{words_ones[ones]}"
		    answer.gsub!(/ +/, ' ')
		    return answer
		end
	elsif int > 0 && int < 10
		answer = "#{words_ones[ones]}"
		answer.gsub!(/ +/, ' ')
		return answer
	end
end


# Refactored Solution

def in_words(int)
	words_ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	words_teens = ["", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen"]
	words_tens = ["", "ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninty"]
	hundreds = int / 100
	tens = (int / 10) % 10
	ones = int % 10
	if int > 999
		return "Enter an integer less than 1000"
	elsif int > 99 && int < 1000
		answer = "#{words_ones[hundreds]} hundred #{words_tens[tens]} #{words_ones[ones]}"
		answer.gsub!(/ +/, ' ')
		return answer
	elsif int > 9 && int < 100
	    if int > 10 && int < 20
	        answer = "#{words_teens[ones]}"
	        return answer
		else
		    answer = "#{words_tens[tens]} #{words_ones[ones]}"
		    answer.gsub!(/ +/, ' ')
		    return answer
		end
	elsif int > 0 && int < 10
		answer = "#{words_ones[ones]}"
		answer.gsub!(/ +/, ' ')
		return answer
	elsif int < 0
		return "Please enter a positive integer"
	else
		return "Invalid input"
	end
end




# Reflection
#What concepts did you review or learn in this challenge?
#The major concept was control flow and managing different outcomes.
#What is still confusing to you about Ruby?
#I mean RUBY has tons of methods that I don't know how to use properly yet, but I think that will come with more use and practice.
#What are you going to study to get more prepared for Phase 1?
#I want to get better at my refactoring.