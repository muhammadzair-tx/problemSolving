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

class Board
  # Allow rectangular boards.
  
  def initialize()
    @boxes = 9
    # This creates a 2-dimensional array filled with nil values
    # See http://cl.ly/image/12073k0X2v0G
    #@board = Array.new(@rows) { Array.new(@columns) }
    @board = Array.new(9," ")
  end

  def boxes
    @boxes
  end
  def board
    @board
  end

  # Place a "piece" on the board at (row, column)
  def place(box,piece)
    if box >= self.boxes
      fail "Board has 1-9 boxes and your choice is #{box} is out of bounds."
    end
    if self.board[box] != " "
      puts "That box is already filled "
    end
    self.print_board()
    self.board[box] = piece
  end
def at(box)
  puts "At function call"
  if self.board[box] == " "
    puts "We haven't placed anything at (5,5) yet"
  else
    puts "Now '#{self.board[box]}' is at #{box}"
    self.print_board()
  end
end
  # Returns the piece at (row, column) on the board and nil otherwise, e.g.,
  #   board = Board.new(9,9)
  #
  #   board.at(5,5) == nil  # We haven't placed anything at (5,5) yet
  #   board.place(5,5,"X")  # Place "X" at (5,5)
  #   board.at(5,5) == "X"  # Now "X" is at (5,5)

  # Removes the piece at (row, column) on the board if there is one to remove.
  # Raises an error if we try to remove something from an empty square.
  def remove(box)
    # We have to do four things:
    #
    # 1. Make sure "row" is in bounds
    # 2. Make sure "column" is in bounds
    # 3. Make sure there's a piece at (row, column) to remove
    # 4. If all the above check out, remove the appropriate piece
    if self.board == " "
      puts "there is nothing to remove"
    else
      self.board[box] = " "
      puts "remove sucussfuly"
      self.print_board()
    end
  end
  def print_board
    board = self.board
    print "#{board[0]} | #{board[1]} | #{board[2]}\n"
    puts "------------"
    print "#{board[3]} | #{board[4]} | #{board[5]}\n"
    puts "------------"
    print "#{board[6]} | #{board[7]} | #{board[8]}\n"
    puts "//////////////////////////\n\n"
  end
end

# Don't change this method!
# print_board prints the board out to the screen in an easy-to-read format


# Don't change this code, either!
# See http://cl.ly/image/3t450Y271d25 for expected output
if __FILE__ == $PROGRAM_NAME
  board = Board.new()
  board.place(0, "X")
  board.place(1, "O")
  board.place(8, "X")
  board.place(4, "X")
  board.remove(4) #remove the 'x' that we just added
  board.remove(3) # show error message becouse there is nothing to remove
  board.at(1) #show what is at this position
  board.print_board()
end
