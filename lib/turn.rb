def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
    board[index] != " "
end


def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def move(board, index, token = "X")
  board[index] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  index = 0
  if valid_move?(board, index) == true
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
    until valid_move?(board, index) == true
    move(board, index, "X")
  end
  
  display_board(board, index)
  end
end














