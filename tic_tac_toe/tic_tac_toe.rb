class TicTacToe

  def initialize
    @board = Array.new(9, " ")
  end

  WIN_COMBINATIONS = [
    [0,1,2], #top row
    [3,4,5], #middle row
    [6,7,8], #bottom row
    [0,3,6], #first column
    [1,4,7], #second column
    [2,5,8], #third column
    [0,4,8], #top left - botom right diagonal
    [2,4,6]  #top right - bottom left diagonal
  ] 

  def display_board
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "----------"
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "----------"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end
  
  def input_to_index(input)
    input.to_i - 1
  end

  def move(token, index)
    @board[index] = token
  end

  def position_taken?(index)
    if @board[index] == nil
      false
    else
      true
    end
  end

  def valid_move?(index)
    if !position_taken?(index) && index.include?(0, 8)
      true
    else
      false
    end
  end

  def turn_count
    @board.compact.length
  end

  def current_player
    turn_count.even? ? "X" : "O"
  end

end

game = TicTacToe.new
game.display_board