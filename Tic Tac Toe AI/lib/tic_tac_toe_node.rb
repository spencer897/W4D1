require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_reader :board, :next_mover_mark, :prev_move_pos, :childs
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
    @childs= []
  end

  def losing_node?(evaluator)
 @board.winner ==  @next_mover_mark
    @childs.each do |child|
     
      
    end 
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    i = 0 
    @next_mover_mark == :x ? mark = :o :  mark = :x 
    c_board = @board.dup 
    c_board.rows.each_with_index do |rows, i|
      rows.each_with_index do |spot, j|
        unless spot == :x || spot == :o
      @childs << TicTacToeNode.new(c_board, mark, [i, j])
        end
      
    end
    end 
    @childs 
  end
end
