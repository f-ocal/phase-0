# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I did this solo challenge by myself.
# I spent 2 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# Assign an instance variable to BINGO. Then, convert to string and split to each character. You can now sample to get one of the letter.
# You can randomized the number between 1 to 100.

# Check the called column for the number called.
# B - > [0]
# I - > [1]
# N - > [2]
# G - > [3]
# O - > [4]

# If the number is in the column, replace with an 'x'
# Display a column to the console
# Display the board to the console (prettily)

# Initial Solution

# class BingoBoard
#   BINGO_MAPPING = {'B' => 0, 'I' => 1, "N" => 2, 'G' => 3, 'O' => 4}
#
#   def initialize(board)
#     @bingo_board = board
#   end
#
#   def call_bingo_letter_and_number
#     @letter = BINGO_MAPPING.keys.shuffle.first  #this should produce "B"
#     #@number = rand(1...10)  This can be commented out while testing if the program is working, I know it would take long time to match the number within range of 100.
#     @number = rand(1...100)  #this should produces "12"
#     puts ''
#     5.times do # fancy dots.
#       print "."
#       sleep 0.2
#     end
#     puts "The BINGO is #{@letter}#{@number}"
#     puts ''
#   end
#
#   def check_column_if_it_has_bingo
#     # if (@letter == 'B') is uncessarry now as hashes allows kep - value mapping.
#     # p @bingo_board.map {|row| row.include?(@number) ? (row[row.index(@number)] = 'X'; row) : row} # This code changes the matched numbers by searching entire board, and it changes everywhere.
#     @bingo_board.collect do |row| # iterating over a double array here
#       if row[BINGO_MAPPING[@letter]] == @number # i is a single array, so we're checking if the ball number is included
#         row[BINGO_MAPPING[@letter]] = 'X'
#       end
#     end
#   end
#
#   def display_board(message)
#     puts message
#     @bingo_board.each { |row| p row }
#   end
#
# end

# I know this would take time to test and see if the program replace BINGO number with 'X'; therefore I made below array to make it easy to test. You can commented out while testing.
# board = [ [7, 4, 1, 8, 8],
#           [2, 6, 7, 5, 3],
#           [3, 5, 9, 3, 5],
#           [5, 1, 6, 4, 1],
#           [8, 7, 4, 2, 3]]
#
# board = [ [47, 44, 71, 8, 88],
#           [22, 69, 75, 65, 73],
#           [83, 85, 97, 89, 57],
#           [25, 31, 96, 68, 51],
#           [75, 70, 54, 80, 83]]
#
# new_game = BingoBoard.new(board)
# new_game.call_bingo_letter_and_number
# new_game.display_board "---- The old BINGO board is -----"
# new_game.check_column_if_it_has_bingo
# new_game.display_board "---- The new BINGO board is -----"

# Refactored Solution

class BingoBoard
  BINGO_MAPPING = {'B' => 0, 'I' => 1, "N" => 2, 'G' => 3, 'O' => 4}

  def initialize(board)
    @bingo_board = board
  end

  def call_bingo_letter_and_number
    @letter = BINGO_MAPPING.keys.sample  #this should produce "B"
    #@number = rand(1...10)  This can be commented out while testing if the program is working, I know it would take long time to match the number within range of 100.
    @number = rand(1...100)  #this should produces "12"
    puts ''
    5.times do # fancy dots.
      print "."
      sleep 0.2
    end
    puts "The BINGO is #{@letter}#{@number}"
    puts ''
  end

  def check_column_if_it_has_bingo
    index_number = BINGO_MAPPING[@letter]
    @bingo_board.collect do |row|
      row[index_number] = 'X' if row[index_number] == @number
    end
  end

  def display_board(message)
    puts message
    @bingo_board.each { |row| p row }
  end
end

# I know this would take time to test and see if the program replace BINGO number with 'X'; therefore I made below array to make it easy to test. You can commented out while testing.
# board = [ [7, 4, 1, 8, 8],
#           [2, 6, 7, 5, 3],
#           [3, 5, 9, 3, 5],
#           [5, 1, 6, 4, 1],
#           [8, 7, 4, 2, 3]]

board = [[47, 44, 71, 8, 88],
         [22, 69, 75, 65, 73],
         [83, 85, 97, 89, 57],
         [25, 31, 96, 68, 51],
         [75, 70, 54, 80, 83]]

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

new_game = BingoBoard.new(board)
new_game.call_bingo_letter_and_number
new_game.display_board "---- The old BINGO board is -----"
new_game.check_column_if_it_has_bingo
new_game.display_board "---- The new BINGO board is -----"



#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
It was alright, I managed to nail the neccessary steps down to produce the BINGO.

What are the benefits of using a class for this challenge?
I did get a change instance variables and call them amongst different methods.

How can you access coordinates in a nested array?
I access the coordinates in a nested array by referring to the index number.

What methods did you use to access and modify the array?
I used collect, each and index number to access and modify the array

How did you determine what should be an instance variable versus a local variable?
If I needed to use the same variable in another method within the class, I would define as instance variables.

What do you feel is most improved in your refactored solution?
It is improved very well, I don't think I can refactor it further.

=end
