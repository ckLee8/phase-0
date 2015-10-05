#full name
puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name"
last = gets.chomp
puts #space
puts "Hello, " + first.capitalize! + " " + middle.capitalize! + " " + last.capitalize! + "!"

#bigger better
puts "What is your favorite number?"
num = gets.chomp.to_i
num = num + 1
num = num.to_s
puts #space
puts num + " is a bigger, better number!"

#How do you define a local variable?
#A local variable is a variable available only in a given scope. (such as a method)
#How do you define a method?
#A method is a function that can be called to reproduce certain steps. Anything overly repetitive in code can probably be made into a method.
#What is the difference between a local variable and a method?
#Very different in nature. Local variables are called usually within methods. Methods are a container for reptitive code.
#How do you run a ruby program from the command line?
#you type irb into terminal, which is Interactive Ruby!
#How do you run an RSpec file from the command line?
#you simply type rspec filename.rb
#What was confusing about this material? What made sense?