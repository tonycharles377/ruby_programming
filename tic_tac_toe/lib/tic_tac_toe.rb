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

  # main game loop method
  def play
    puts "Welcome to the Tic Tac Toe Game!"
    display_board
    turn until over?

    if won?
      puts "Congratulations #{winner} won!"
    else
      puts "It's a draw!"
    end

  end

  private

  # Helper methods
  def display_board
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "----------"
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "----------"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def move(index, token)
    @board[index] = token
  end

  def position_taken?(index)
    @board[index] != " "
  end

  def valid_move?(index)
    (0..8).include?(index) && !position_taken?(index)
  end

  def turn_count
    @board.count { |square| square != " " }
  end

  def current_player
    turn_count.even? ? "X" : "O"
  end

  def turn
    puts "Make a move choose from 1-9"
    index = input_to_index(gets.chomp)

    if valid_move?(index)
      move(index, current_player)
      display_board
    else
      puts "Enter a valid move"
      turn
    end
  end

  def won?
    WIN_COMBINATIONS.any? do |combo|
      if position_taken?(combo[0]) && @board[combo[0]] == @board[combo[1]] && @board[combo[1]] == @board[combo[2]]
        return combo
      end
    end
  end

  def full?
    @board.all?{|square| square != " "}
  end

  def draw?
    full? && !won?
  end

  def over?
    if won? || full?
      return true
    end
  end

  def winner
    if winning_combo = won?
      @board[winning_combo[0]]
    end
  end

  def input_to_index(input)
    input.to_i - 1
  end
end