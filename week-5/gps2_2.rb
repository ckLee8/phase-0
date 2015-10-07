#gps 2.2


# # DEFINE 'make_list' which takes no arguments:
# #   create/return a new, empty, hash
def make_list
  {}
end

# # DEFINE 'add_item' which takes arguement: list (hash), items (string), quantity (num)
# #   append new item + quanitiy to hash
# #   return updated hash
def add_item(list, item, quantity)
  list[item] = quantity
end

# # DEFINE 'remove_item' which takes arguement: list (hash), items (string)
# #   delete item + all quanities from hash
# #   return updated hash
def remove_item(list, item)
  list.delete(item)
end

# # DEFINE update_quantity which takes arguement: list (hash), items (string), quantity (num)
# #    locate item key + set new quanitity
# #    return updated hash
def update_quantity(list, item, quantity)
  list[item] = quantity
end

# # DEFINE print_list whichs takes arguement: list (hash)
# #    iterate through each item in list
# #      print each item
# #      print colon
# #      print quantity
# #      new line
def print_list(list)
  list.each { |item, quantity| puts "#{item}: #{quantity}" }
end


# *** TESTS ***

# my_list = make_list
# p my_list == {}

# add_item(my_list, "pasta", 1)
# p my_list == {"pasta" => 1}

# add_item(my_list, "chicken", 2)

# add_item(my_list, "water", 15)
# remove_item(my_list, "pasta")
# p my_list == {}

# update_quantity(my_list, "pasta", 2)
# p my_list == {"pasta" => 2}

# print_list(my_list)

# my_list currently is: {"banana" => "3", "cookies" => "10}

# add_item(list, "water", "3")

# my_list currently is: {"banana" => "3", "cookies" => "10", "water" => "3"}# Create a new list



#What did you learn about pseudocode from working on this challenge?
#I feel as though the one thing I learned most from this session was about psuedocoding. How to properly plan and phrase  so to address all the key problems and make writing the actualy code easy as possible.
#What are the tradeoffs of using Arrays and Hashes for this challenge?
#We determined off the bat that using a hash from this challenge would be best because of the key and value system. Multi-demensional arrays are numerically ordered and are better suited for more complex problems.
#What does a method return?
#A method implicitly returns the evaluated code.
#What kind of things can you pass into methods as arguments?
#You can pass a number of different types of data from string to numbers to arrays and hashes
#How can you pass information between methods?
#By passing the output as a arguement in the next method. 
#What concepts were solidified in this challenge, and what concepts are still confusing?
#For me the number one concept solifidied was proper psuedocoding. How to plan, write out, and structure it.