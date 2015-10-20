#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
	attr_reader :name
	def initialize
		@name = "Chris"
	end
end


class Greetings
	def initialize
		@first = NameData.new
	end
	def hello
		p "Hello #{@first.name}, hope all is well."
	end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
1
What are these methods doing?
The methods are changing the values originally initialized in the class.
How are they modifying or returning the value of instance variables?
Utilizing the class methods, the values are being manipulated as the instance variable.
2
What changed between the last release and this release?
They utilized attr_reader on age
What was replaced?
what is age method was replaced.
Is this code simpler than the last?
absolutely. takes many lines and reduces it greatly
3
What changed between the last release and this release?
the use of attr_writer on age
What was replaced?
the change age method was replaced
Is this code simpler than the last?
yes
4

What is a reader method?
reader method allows for instance variables to be read outside
What is a writer method?
writer methods allow for instance variables to be modified outside
What do the attr methods do for you?
attr method allow for accessing or modifying variables outside the class.
Should you always use an accessor to cover your bases? Why or Why not?
No. Security issues and data integrity. 
What is confusing to you about these methods?
Nothing. Pretty simples and straight forward. I imagine they can get hard to keep track of in large projects.
=end
