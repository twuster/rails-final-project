class PinsController < ApplicationController
  def new
  end

  def create
    @pin = Pin.new(pin_params)  	
    @pin.board_id = pin_params[:board_id]
    @pin.lat = pin_params[:lat]
    @pin.lng = pin_params[:lng]
    @pin.save   	

    if Board.find(pin_params[:board_id]).pins.count == 1 
      @board = Board.find(pin_params[:board_id])
      @board.latitude = pin_params[:lat]
      @board.longitude = pin_params[:lng]
      @board.full_view_latitude = pin_params[:lat]
      @board.full_view_longitude = pin_params[:lng]
      @board.default_zoom = "10"
      @board.save
    end

    redirect_to :back
  end

  def show
  	@pin = Pin.find(params[:id])
  end

  def destroy
    redirect_to :back
    @pin = Pin.find(params[:id])
    @pin.destroy
    @pin.save

    if Board.find(params[:board_id]).pins.count == 1
      @board = Board.find(params[:board_id])
      @first_pin = Board.find(params[:board_id]).pins.first
      @board.latitude = @first_pin.lat
      @board.longitude = @first_pin.lng
      @board.full_view_latitude = @first_pin.lat
      @board.full_view_longitude = @first_pin.lng
      @board.save
    end
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :board_id, :lat, :lng)
  end
end
