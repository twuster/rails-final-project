class BoardsController < ApplicationController

before_action :authenticate_user!

def new
end

def create
	@board = Board.new(board_params)
	@board.user_id = board_params[:user_id]
	@board.save
	redirect_to @board
end

def show
	@all_boards = Board.all
	@board = Board.find(params[:id])
	if @board.user_id != current_user.id
		redirect_to root_path
	end
end

def destroy
	@board = Board.find(params[:id])
	@board.destroy
	@board.save
	redirect_to welcome_path
end

def update
	@board = Board.find(params[:id])
	@board.update_attributes(board_params)
	redirect_to welcome_path
end

private
  def board_params
    params.require(:board).permit(:title, :user_id)
  end

end
