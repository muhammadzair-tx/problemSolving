# Classes: Board

# Let's write a class that represents a basic grid-based "game board",
# as in chess, checkers, tic-tac-toe, Go, and so on.  This is *only* the board
# and it contains absolutely no game-specific logic.

# The only "rules" are as follows:
#
# 1. The board is a rectangular grid of "cells" or "squares"
# 2. You can place anything you want on each board square
# 3. Only one piece can be present on a given board square at a time
# 4. You can remove a piece from a board square, too.
# 5. If you try to place a piece on an already-occupied square,
#    the board should raise an error.
# 6. If you try to remove a piece from an empty square,
#    the board should raise an error.
# 7. If at any point you try to look at a square which is "out of bounds",
#    the board should raise an error.

# In short, you should imagine an empty chess-like board absent the idea
# that you're playing chess or any other game.  You can place and remove
# whatever you want from each square -- chess pieces, paper scraps,
# coins, etc. -- but you can only place one thing on each square.

# In code, we'll be representing a "piece" by a single-character string like
# "X", "O", "K", "Q", "N", etc.

# KINDLY SAVE YOUR CODE FILE AS `board.rb`

# @board = Array.new(@rows) { Array.new(@columns)}
# @board = [[0]*n]*n
class Board
  # Allow rectangular boards.
  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    
    @boxes = Array.new(@rows)
    
    @rows.times do |i|
        @boxes[i] = Array.new(@columns," ")
    end
    

    # This creates a 2-dimensional array filled with nil values
    # See http://cl.ly/image/12073k0X2v0G
  end
  def boxes
    @boxes
  end

  # Return the number of rows on the board
  def rows
    @rows
  end

  # Return the number of columns on the board
  def columns
    @columns
  end

  def inrange(row, column)
    (0..@rows).include?(row) && (0..@columns).include?(column)
  end 

  # Place a "piece" on the board at (row, column)
  def place(row, column, piece)
   # Add logic & return output on console
   if !(inrange(row,column))
        puts "You are out of range :: give us a valid box row should be in less than #{@rows} and column must be less than #{@columns}"
    elsif self.boxes[row][column] == " "
        self.boxes[row][column] = piece
    else
        puts "This box is already occupied with another mark, delete it or choose any other box"
            
   end
   
  end

  # Returns the piece at (row, column) on the board and nil otherwise, e.g.,
  #   board = Board.new(9,9)
  #
  #   board.at(5,5) == nil  # We haven't placed anything at (5,5) yet
  #   board.place(5,5,"X")  # Place "X" at (5,5)
  #   board.at(5,5) == "X"  # Now "X" is at (5,5)
  def at(row, column)
    # Add logic for this method, Remember to account for inbound & outbound checks.
    puts "At function call"
  if self.boxes[row][column] == " "
    puts "We haven't placed anything at (#{row},#{column}) yet"
  else
    puts "Now '#{self.boxes[row][column]}' is at (#{row},#{column})"
  end
  end

  # Removes the piece at (row, column) on the board if there is one to remove.
  # Raises an error if we try to remove something from an empty square.
  def remove(row, column)
    # We have to do four things:
    #
    # 1. Make sure "row" is in bounds
    # 2. Make sure "column" is in bounds
    # 3. Make sure there's a piece at (row, column) to remove
    # 4. If all the above check out, remove the appropriate piece
   if !(inrange(row,column))
        puts "You are out of range :: give us a valid box row should be in less than #{@rows} and column must be less than #{@columns}"
    elsif self.boxes[row][column] != " "
        self.boxes[row][column] = " "
        puts "successfully Deleted"
    else
        puts "This box is already empty, nothing to delete "
            
   end
  end
end

# print_board prints the board out to the screen in an easy-to-read format
def print_board(board)
  # See http://cl.ly/image/3t450Y271d25 for expected output
  @boxes = board.boxes
  @boxes.each do|row|
        row.each do|col|   
            print "  #{col.to_s}  |"
        end
        puts " "
        print "------" * board.columns
        puts " "

    end
    puts ""
    puts ""
end

# Don't change this code, its sample input which we will test your code against.
# See http://cl.ly/image/3t450Y271d25 for expected output
if __FILE__ == $PROGRAM_NAME
  board = Board.new(4, 4)
  print_board(board) # this should be emtpy 
  
  board.place(0, 0, "X")
  board.place(1, 1, "O")
  board.place(2, 2, "X")
  board.place(3, 3, "#")
  print_board(board) # place the mark without error s
  
  board.place(2, 2, "#") #show the error that this box is already taken 

  #now check the at() function
  board.at(2,2)
  board.at(2,4)

  board.remove(2,2)
  print_board(board)
  board.remove(2,2)#show error
  

end