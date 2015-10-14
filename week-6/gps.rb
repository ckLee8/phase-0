# Your Names
# 1)Chris Lee
# 2)Eric Freeberg

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

#define method serving_size_calc that takes arguement: item_to_make(string), order_quantity(num)
#output: number of item_to_make possible with specified order_quantity - also resulting leftover order_quantity

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

#iterate through library (hash) with local variable (food)
#if local variable food is not equal to inputted parameter decrement error_counter by 1
#if error_counter is greater than 0 - throw error message - item inputted doesn't exist in library
  if library.has_key?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

#declare serving_size equals the value of item_to_make(key) in library (hash)
#serving_size_mod - the remainder of order_quantity and serving size
  serving_size = library.values_at(item_to_make)[0]
  leftovers = order_quantity % serving_size

#make case serving_size_mod
#when serving_size_mod is 0 - return simple string statement. output # of item_to_make 
#otherwise - return string statement with # of item_to_make - remaining serving_size_mod - also some recommendations

  pie = 0
  cake = 0
  cookie = 0
  pie = leftovers / 7
  cake = (leftovers % 7) / 5
  cookie = (leftovers % 7) % 5
  case leftovers
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{leftovers} leftover ingredients. Suggested baking items: " + "pie: " + pie.to_s + " cake: " + cake.to_s + " cookies: " + cookie.to_s + "."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
#What did you learn about making code readable by working on this challenge?
#There are little nuances in code that make it easier for people to read. Proper spacing and indenting is one thing. We also took into consideration the variable names.
#Did you learn any new methods? What did you learn about them?
#We looked up the method .has_key? for the error message. This allows for us to see if a hash has a key value we input.
#What did you learn about accessing data in hashes? 
#There are simple methods, which make it very easy.
#What concepts were solidified when working through this challenge?
#My psuedocode is getting better and better. I feel my self thinking out loud more and being very intentional and logical in all my steps.