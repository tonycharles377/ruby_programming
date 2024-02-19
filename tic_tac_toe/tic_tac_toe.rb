class TicTacToe

  def initialize
    @board = Array.new(9, "_")
  end

  WIN_COMBINATIONS = [
    [0,1,2], #top row
    [3,4,5], #middle row
    [6,7,8], #bottom row
    [0,3,6], #first column
    [1,4,7], #second column
    [2,5,8], #third column
    [0,4,8], #top left - botom right diagonal
    [2,4,6]] #top right - bottom left diagonal


  
end

game = TicTacToe.new