class BoardsController < ApplicationController

def new
end

def create
	@board = Board.new(board_params)

	@board.save
	redirect_to @board
end

def show
	@all_boards = Board.all
	@board = Board.find(params[:id])
end

private
  def board_params
    params.require(:board).permit(:title)
  end

end
