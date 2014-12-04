class PinsController < ApplicationController
  def new
  end

  def create
    @pin = Pin.new(pin_params)  	
    @pin.board_id = pin_params[:board_id]
    @pin.save   	
    redirect_to :back
  end

  def show
  	@pin = Pin.find(params[:id])
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :board_id)
  end
end