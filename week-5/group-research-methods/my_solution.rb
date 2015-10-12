# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution - Josh Abrams

def my_array_finding_method(array, letter)
  new_array = []
  array.each { |x| new_array << x.to_s }
  return new_array.select { |x| x.include?(letter) }
end


def my_hash_finding_method(hash, age)
  array = []
  hash.each { |key, value| if value == age then array << key end }
  return array
end

#Person 2 - Deanne Warren

def my_array_modification_method!(source, thing_to_modify)
  message = Array.new
  source.each do |x|
    if x.is_a?(Numeric)
      message << x.to_i + thing_to_modify.to_i
    elsif
      message << x
    end
  end
  source.replace(message)
  return source
end


def my_hash_modification_method!(source, thing_to_modify)
  source.each do |key,value|
    source[key] = value + thing_to_modify
  end
  p source
end

# Person 3 - Mark Janzer
# I want this method to alphabetizes an array
def my_array_sorting_method(source)
  source.sort_by do |w|
    w.to_s
  end
end

def my_hash_sorting_method(source)
  source.sort_by { |name, age| age }
end

# Person 4 - Chris Lee
def my_array_deletion_method!(source, thing_to_delete)
  i = source.length
  while i > 0 do
    if source[i].to_s.include?(thing_to_delete)
      source.delete_at(i)
      i+=1
    end 
    i-=1
  end
  return source
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.each do |key, value|
    if key == thing_to_delete
      source.delete(key)
    end
  end
  return source
end

# Identify and describe the Ruby method(s) you implemented.
#.each - iterates through each of the elents, 
#.delete - deletes hash element @ specific key
#.delete_at - delete array element at array position
#.to_s - convert data to string
#.include? - checks if data includes some value
#.length - returns the length / #of elements
#
#
# --.replace--
#     This takes the hash/array that it is called on and replaces it's
#     contents with the contents of an array that is the argument. The
#     original values are destroyed
# --.is_a?()--
#   I'm going to start by passing you a link, b/c I still don't really understand
#   all of this:
#       http://stackoverflow.com/questions/10558504/can-someone-explain-the-class-superclass-class-superclass-paradox
#   So the basic conceit of .is_a?(Class) is  to ask an element if it's a certain
#   type of thing/ member of a specific class. I used Numeric because it's a
#   Superclass containing the classes of float and integer, but I'm not super
#   comfortable with that concept yet. Just know you can ask if something is
#   in a certain class, and so far Numeric (or Integer or Float) and String
#   are the most relevent.
#   Oh, it returns boolean, that's why I called it as the argument on an if
#   statement.

# --.to_i--
#     we've covered .to_i before, it attempts to turn the object handed to it
#     into an integer. it can convert a float into an integer, and a string
#     ainto an integer if that string contains only numbers. If the string
#     contains numbers and number characters it will parse together an
#     output of the numbers (ignoring any whitespace) until the first
#     non-numeric character and then stops parsing. Any numerics
#     after the non-numeric will be ignored.
#Select returns an array containing every object in the array that returns true when run through the block of code.
#sort_by. When applied to arrays, sort automatically sorts an array alphabetically with numbers (in strings) followed by Capitalized letters, followed by lower case letters. The issue is that sort cannot compare numbers to strings. When using sort by, you declare the variable to represent each element in the pipes ||. You can then alter this element. I used w for word. If after it, I just printed w, it would be no different than .sort. But I did changed every value to a string with .to_s before comparing them.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#utilizing either .each or a while loop i was able to iterate through the hash/array.
#utilizing these iterations. i checked if the data included something utilizing the .include? method
#I deleted each data element when necessary utilizing .delete / .delete_at


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# When you can explain your work clearly to another person, you have a clearer sense of direction and tend to know the material better.
# I realized that I am not sure about the terminologoy of those blocks that are surrounded by curly braces. I also learned that .sort will not work with both integers and strings, and you have to convert them yourself. Finally, I felt that as much as I explained things, I think the most useful thing I did was show an example.
# researching is hard, but it's easier when you know what specific you're researching and the extra research to teach helps me understand what i'm using.
#
#