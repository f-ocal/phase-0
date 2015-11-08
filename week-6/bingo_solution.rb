# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# Assign an instance variable to BINGO. Then, convert to string and split to each character. You can now sample to get one of the letter.
# You can randomized the number between 1 to 100.

# Check the called column for the number called.
#
# B - > [0]
# I - > [1]
# N - > [2]
# G - > [3]
# O - > [4]

# If the number is in the column, replace with an 'x'

# Display a column to the console

# Display the board to the console (prettily)


# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @game_name = ["B", "I", "N", "G", "O"]
    @column = @game_name.index(@game_name.to_s)
    @new_array = []
  end

  def call_bingo_letter_and_number
    @letter = @game_name.shuffle.first  #this should produce "B"
    @number = rand(1...10)  #this should produces "12"
    @bingo_call = [@letter].concat([@number]).join  # This will combine "B" and "12"= > "B12"
    @bingo_call_split = @bingo_call.split(//) # This will produce ["B", "12"]
    5.times do # fancy dots. 
      print "."
      sleep 0.3
    end
    p "The BINGO is #{@bingo_call}"

  end

  def check_column_if_it_has_bingo
    puts "---- The old BINGO board is -----"
    @bingo_board.each { |row| p row }

    if (@bingo_call_split[0] == 'B')
      # p @bingo_board.map {|row| row.include?(@number) ? (row[0][row[0].index(@bingo_call[1])] = 'X'; row[0]) : row[0]}
      @bingo_board.collect do |row| # iterating over a double array here
        if row.include?(@number) # i is a single array, so we're checking if the ball number is included
          row[row.index(@number)] = 'X'; row # find the index of the included element, replace with X
        else
          row
        end
      end

    elsif (@bingo_call_split[0] == 'I')
      @column_info = @bingo_board.map {|row| row[1] }

    elsif (@bingo_call_split[0] == 'N')
      @column_info = @bingo_board.map {|row| row[2] }

    elsif (@bingo_call_split[0] == 'G')
      @column_info = @bingo_board.map {|row| row[3] }

    elsif (@bingo_call_split[0] == 'O')
      @column_info = @bingo_board.map {|row| row[4] }
    end

    display_column

  end

  def display_column
    # p "The column where BINGO is found at #{@column_info}"
    puts "---- The new BINGO board is -----"
    @bingo_board.each { |row| p row }
  end

end

board = [ [1, 6, 8, 3, 7],
[2, 7, 7, 2, 6],
[3, 8, 6, 1, 5],
[4, 9, 5, 9, 1],
[5, 9, 4, 8, 3]]

new_game = BingoBoard.new(board)
new_game.call_bingo_letter_and_number
new_game.check_column_if_it_has_bingo

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE


# For the letter of B, B10 => [0][0] [0][1] [0][1][2] [0][1][2][3] [0][1][2][3][4] [0][1][2][3][4][5]




#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
What are the benefits of using a class for this challenge?
How can you access coordinates in a nested array?
What methods did you use to access and modify the array?
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?


=end
