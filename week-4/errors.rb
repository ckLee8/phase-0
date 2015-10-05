# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [.5] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
  #  puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#Errors.rb
# 2. What is the line number where the error occurs?
#line 170
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end of input on line 170 (end of code), looking for end keyword.
# 5. Where is the error in the code?
#The error is at the end of the method.
# 6. Why did the interpreter give you this error?
#The interpreter gave this error because it is expecting an end to close the method.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#35
# 2. What is the type of error message?
#name error
# 3. What additional information does the interpreter provide about this type of error?
#undefined local variable or method
# 4. Where is the error in the code?
#the error is that there is no assigned value to south park
# 5. Why did the interpreter give you this error?
#south_park has no value

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#50
# 2. What is the type of error message?
#noMethodError
# 3. What additional information does the interpreter provide about this type of error?
#undefined method `cartman' for main:Object
# 4. Where is the error in the code?
#The error is due to the fact there is no method
# 5. Why did the interpreter give you this error?
#No method named cartman

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#65 / 69
# 2. What is the type of error message?
#arguement error
# 3. What additional information does the interpreter provide about this type of error?
#wrong # of arguments
# 4. Where is the error in the code?
#65 / 69
# 5. Why did the interpreter give you this error?
#Two fold error, either the method should be adjusted. Or the method shouldn't be called with a parameter.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#84 / 88
# 2. What is the type of error message?
#arguement error
# 3. What additional information does the interpreter provide about this type of error?
#wrong # of arguments
# 4. Where is the error in the code?
#84 / 88
# 5. Why did the interpreter give you this error?
#Again wrong # of arguements, except the scenario is flip flopped.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#105 / 109
# 2. What is the type of error message?
#arguement error
# 3. What additional information does the interpreter provide about this type of error?
#wrong # of arguements
# 4. Where is the error in the code?
#105 / 109
# 5. Why did the interpreter give you this error?
#improper # of arguements in the call. or improperly made method

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#124
# 2. What is the type of error message?
#typeerror
# 3. What additional information does the interpreter provide about this type of error?
#string can't be coerced into fixnum
# 4. Where is the error in the code?
#124
# 5. Why did the interpreter give you this error?
#The string is trying to be treated as a numeric.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#139
# 2. What is the type of error message?
#zero division error
# 3. What additional information does the interpreter provide about this type of error?
#divided by 0
# 4. Where is the error in the code?
#139
# 5. Why did the interpreter give you this error?
#A number divided by 0 is undefined

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#155
# 2. What is the type of error message?
#Loaderror
# 3. What additional information does the interpreter provide about this type of error?
#require_relative': cannot load such file
# 4. Where is the error in the code?
#155
# 5. Why did the interpreter give you this error?
#The file is not properly pathed.

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
#I got confused with the first problem and the sample problem. 
#How did you figure out what the issue with the error was?
#I simply read the terminal message, it was always pretty obvious just by glancing at the code.
#Were you able to determine why each error message happened based on the code? 
#Yes.
#When you encounter errors in your future code, what process will you follow to help you debug?
#Now I know that terminal gives error messages so, I suppose I can utilize terminal.