# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


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


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#utilizing either .each or a while loop i was able to iterate through the hash/array.
#utilizing these iterations. i checked if the data included something utilizing the .include? method
#I deleted each data element when necessary utilizing .delete / .delete_at


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# When you can explain your work clearly to another person, you have a clearer sense of direction and tend to know the material better.
#
#
#