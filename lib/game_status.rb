# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # center row
  [6, 7, 8], # bottom row
  [0, 3, 6], # first column
  [1, 4, 7], # second column
  [2, 5, 8], # third column
  [0, 4, 8], # diagonal L-R
  [2, 4, 6] # diagonal R-L
]

def won?(board)
 WIN_COMBINATIONS.detect do |win|
   board[win[0]] == board[win[1]] &&
   board[win[1]] == board[win[2]] &&
   position_taken(board, win[])
 end
end

def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end
