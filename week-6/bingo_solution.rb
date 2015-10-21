# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #define method let_num
  #

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

#def method initialize - argument board(array)
#declare instance variable bingo_board and set equal to board argument
#declare call method
#set instance variable bingo to array of the letters in BINGO
#set instance variable letter to a random value from bingo
#set instance variable number to some random number between 1 and 100
#declare check method
#iterate through array bingo_board
#if the array valye is equal to instance variable number -> replace value with "X "(string)
#else remain array value
#definte print method
#iterate through bingo_board and print each sub array on a new line
# Initial Solution

# class BingoBoard
#   def initialize(board)
#     @bingo_board = board
#   end
#   def call
#     @bingo = ["B", "I", "N", "G", "O"]
#     @letter = @bingo.sample
#     @number = rand(1..100)
#     p @letter
#     p @number
#   end
#   def check
#     @bingo_board.each do |row|
#         row.map! do |cell|
#             if cell == @number
#                 p "match"
#                 cell = "X"
#             else
#                 cell
#             end
#         end
#     end
#   end
#   def print
#     @bingo_board.map! {|x| p x}
#   end
# end

# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
  end
  def call
    p letter = ["B", "I", "N", "G", "O"].sample
    p @number = rand(1..100)
  end
  def check
    @bingo_board.each do |row|
        row.map! do |cell|
            if cell == @number
                p "match"
                cell = "X"
            else
                cell
            end
        end
    end
  end
  def print
    @bingo_board.map! {|x| p x}
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]


new_game = BingoBoard.new(board)
new_game.call 
new_game.check
new_game.print
#Reflection
#How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#The psuedocode was fairly straight forward. My psuedocode is getting pretty good. The more i practice and mentally visualize it, the better it gets.
#What are the benefits of using a class for this challenge?
#Creating these methods and instance variables and not having to pass arguemnt from method to method makes it an ideal class.
#How can you access coordinates in a nested array?
#I utilized a .each do to iterate through the array. 
#What methods did you use to access and modify the array?
#I used the destructive method .map! to overwrite the given array. While iterating through the values.
#How did you determine what should be an instance variable versus a local variable?
#If they were necessray in another method, i made them instance, other wise, i kept them as local variables.
#What do you feel is most improved in your refactored solution?
#The code is tighter and takes less round about ways. Its a lot more concise.