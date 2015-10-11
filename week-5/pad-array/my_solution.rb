# Pad an Array

# I worked on this challenge [by myself, with: Jessie Richardson]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size 
    i = min_size - array.length
    while i > 0 
      array << value
      i = i-1
      end
      p array 
  else
    p array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array
  if new_array.length >= min_size
   p new_array
  elsif new_array.length < min_size 
    i = min_size - new_array.length
    while i > 0 
      new_array << value
      i = i-1
      end
      p new_array 
    end
end


# 3. Refactored Solution



# 4. Reflection