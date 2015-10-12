# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
#some array of numbers
# What is the output? (i.e. What should the code return?)
#return an modal array
# What are the steps needed to solve the problem?
# convert array to hash with the key being the integer and the value being its frequency
#check which has highest frequency and return those as an array

# 1. Initial Solution
def mode (array)
    h = Hash.new(0)
    i = array.length - 1
    while i >= 0 do
        h[array[i]] += 1
        i-=1
    end
    mode_array = []
    freq = h.values.max
    h.each do |key, value|
        if value == freq
            mode_array << key
        end
    end
    return mode_array.sort
end

# 3. Refactored Solution

def mode (array)
    h = Hash.new(0)
    i = array.length - 1
    while i >= 0 do
        h[array[i]] += 1
        i-=1
    end
    mode_array = []
    h.each do |key, value|
        if value == h.values.max
            mode_array << key
        end
    end
    return mode_array.sort
end


# 4. Reflection
#Which data structure did you and your pair decide to implement and why?
#I utilized a hash and array. The hash made it possible to assign specific integers a frequency.
#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
#For the most part, pseudocode gave me a good direction. It was difficult to translate to ruby in some instances.
#What issues/successes did you run into when translating your pseudocode to code?
#It was hard to iterate through the array and assign the array values only as hash keys.
#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#I utilized both a while loop and a .each. both were necessary for my solution.