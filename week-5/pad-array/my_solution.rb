# Pad an Array

# I worked on this challenge [by myself, with: Jessie Richardson]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#The input is some array, a minimum size (positive integer) that denotes smallest array size, and value of padded array values.
# What is the output? (i.e. What should the code return?)
#The output should be some array with padded values - depending on the min_size and value parameters.
# What are the steps needed to solve the problem?
#we need to iterate through array and if the min_size is larger than the array we need to pad values according to value, otherwise we just print array.


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    array
  else
    i = min_size - array.length
    while i > 0 do
      array << value
      i-=1
      end
      array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each {|x| new_array << x}
  if new_array.length >= min_size
   p new_array
  elsif new_array.length < min_size 
    i = min_size - new_array.length
    while i > 0 
      new_array << value
      i-=1
      end
      p new_array 
    end
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size 
    i = min_size - array.length
    while i > 0 
      array << value
      i-=1
      end
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each {|x| new_array << x}
  if new_array.length < min_size 
    i = min_size - new_array.length
    while i > 0 
      new_array << value
      i-=1
      end
    end
    p new_array
end

# 4. Reflection
#Were you successful in breaking the problem down into small steps?
#Yes. Last weeks ruby foundations & my gps session helped me plan well with psuedocode.
#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#Yes and no. THe overall structure of the code was very easy. I just couldn't find the right syntax for a thing or two.
#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#Yes. I think good psuedocode is ultimately the difference maker. 
#When you refactored, did you find any existing methods in Ruby to clean up your code?
#Nope. I simple cleaned up and shortened the code.
#How readable is your solution? Did you and your pair choose descriptive variable names?
#I'd say the solution is very self-explaintory.
#What is the difference between destructive and non-destructive methods in your own words?
#Destructive will modify the variable inserted. Non-destructive will output without modifying the original data inputed.