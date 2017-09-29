def display_board(board)
   puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
   puts "-----------"
   puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
   puts "-----------"
   puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
 end

def valid_move?(board, index)
   if !position_taken?(board, index) && index.between?(0,8)
     return true
   else
     return false
  end
end

def position_taken?(board, index)
 board[index] != nil && board[index] != " " && board[index] != ""
end

def input_to_index(move)
 index = move.to_i - 1
 index
end

def move(board, index, character = "X")
   board[index] = character
   return board
end

def turn(board, index)
  puts "Please enter 1-9:"
  index = gets.strip
  valid_move?(board, index) == true ? move(index, current_player) && display_board : turn 
end
